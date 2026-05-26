@echo off
title Safe Educational 6-Digit PIN Generator
setlocal EnableDelayedExpansion

echo =====================================================
echo       Safe Educational 6-Digit PIN Generator
echo       Generating Numeric + Alphanumeric
echo =====================================================
echo.

set "output_dir=pins"
if not exist "%output_dir%" mkdir "%output_dir%"

echo Generating 6-digit files in "%output_dir%" folder...
echo.

:: === 6-Digit Numeric (000000 to 999999) ===
echo Creating 6-digit-PINs.txt (Numeric)...
(
    powershell -NoProfile -Command ^
    "0..999999 | ForEach-Object { '{0:D6}' -f $_ }" 
) > "%output_dir%\6-digit-PINs.txt"
echo     ^> 6-digit-PINs.txt (Done)

:: === 6-Digit Alphanumeric ===
echo Creating 6-digit-alphanumeric-PINs.txt ...
echo     Please wait... (This may take some time)
(
    powershell -NoProfile -Command ^
    "$chars = '0123456789abcdefghijklmnopqrstuvwxyz'; ^
     for($i = 0; $i -lt 2176782336; $i++) { ^
         $n = $i; $s = ''; ^
         for($j = 0; $j -lt 6; $j++) { ^
             $s = $chars[$n %% 36] + $s; ^
             $n = [math]::Floor($n / 36); ^
         } ^
         $s ^
     }" 
) > "%output_dir%\6-digit-alphanumeric-PINs.txt" 2>nul
echo     ^> 6-digit-alphanumeric-PINs.txt (Done)

echo.
echo =====================================================
echo SUCCESS! Files created in "%output_dir%" folder:
echo.
echo    - 6-digit-PINs.txt          (Numeric)
echo    - 6-digit-alphanumeric-PINs.txt
echo.
echo Use only for ethical security research.
echo =====================================================
pause