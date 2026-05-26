@echo off
title Safe Educational 4-Digit PIN Generator
setlocal EnableDelayedExpansion

echo =====================================================
echo       Safe Educational 4-Digit PIN Generator
echo =====================================================
echo.

set "output_dir=pins"
if not exist "%output_dir%" mkdir "%output_dir%"

echo Generating 4-digit files...
echo.

:: 4-Digit Numeric (0000 to 9999)
echo Creating 4-digit-PINs.txt ...
(
    powershell -NoProfile -Command ^
    "0..9999 | ForEach-Object { '{0:D4}' -f $_ }" 
) > "%output_dir%\4-digit-PINs.txt" 2>nul
echo     ^> 4-digit-PINs.txt (Done)

:: 4-Digit Alphanumeric (0000 to zzzz)
echo Creating 4-digit-alphanumeric-PINs.txt ...
(
    powershell -NoProfile -Command ^
    "$chars = '0123456789abcdefghijklmnopqrstuvwxyz'; ^
     for($i = 0; $i -lt 1679616; $i++) { ^
         $n = $i; $s = ''; ^
         for($j = 0; $j -lt 4; $j++) { ^
             $s = $chars[$n %% 36] + $s; ^
             $n = [math]::Floor($n / 36); ^
         } ^
         $s ^
     }" 
) > "%output_dir%\4-digit-alphanumeric-PINs.txt" 2>nul
echo     ^> 4-digit-alphanumeric-PINs.txt (Done)

echo.
echo =====================================================
echo SUCCESS! Files created in "%output_dir%" folder:
echo.
echo    - 4-digit-PINs.txt
echo    - 4-digit-alphanumeric-PINs.txt
echo.
echo Use only for ethical security research and authorized testing.
echo =====================================================
pause