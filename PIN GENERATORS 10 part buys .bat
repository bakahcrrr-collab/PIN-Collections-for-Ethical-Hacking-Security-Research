@echo off
title 10-Digit PIN Full Generator - 50,000 per part
setlocal EnableDelayedExpansion

echo =====================================================
echo     10-Digit Full PIN Generator (50,000 lines each)
echo =====================================================
echo.

set "output_dir=pins"
if not exist "%output_dir%" mkdir "%output_dir%"

set "chunk=50000"
set "current=0"
set "part=1"

echo Starting full 10-digit generation...
echo Total Parts: 200,000
echo This will take a very long time and huge disk space (~100 GB)
echo.

:Start
    set "start=%current%"
    set /a "end=%current% + %chunk% - 1"
    
    if %end% gtr 9999999999 set "end=9999999999"

    echo Creating Part %part% : %start% to %end% ...

    (
        powershell -NoProfile -Command ^
        "%start%..%end% | ForEach-Object { '{0:D10}' -f $_ }" 
    ) > "%output_dir%\10digit_part%part%.txt" 2>nul

    echo     ^> 10digit_part%part%.txt Done

    set /a "current=%end% + 1"
    set /a "part+=1"

    if %current% lss 10000000000 goto Start

echo.
echo =====================================================
echo FULL 10-DIGIT GENERATION COMPLETED!
echo =====================================================
pause