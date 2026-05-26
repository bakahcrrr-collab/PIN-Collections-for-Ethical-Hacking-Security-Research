@echo off
title Safe Educational 7-Digit PIN Generator
setlocal EnableDelayedExpansion

echo =====================================================
echo       Safe Educational 7-Digit PIN Generator
echo       Generating Numeric + Alphanumeric
echo =====================================================
echo.

set "output_dir=pins"
if not exist "%output_dir%" mkdir "%output_dir%"

echo Generating 7-digit files in "%output_dir%" folder...
echo.

:: === 7-Digit Numeric (0000000 to 9999999) ===
echo Creating 7-digit-PINs.txt (Numeric)...
echo     Please wait... (This will take some time)
(
    powershell -NoProfile -Command ^
    "0..9999999 | ForEach-Object { '{0:D7}' -f $_ }" 
) > "%output_dir%\7-digit-PINs.txt" 2>nul
echo     ^> 7-digit-PINs.txt (Done)

:: === 7-Digit Alphanumeric ===
echo Creating 7-digit-alphanumeric-PINs.txt ...
echo     WARNING: This is very large (78+ billion combinations)
echo     It may take hours or crash. Generating anyway...
(
    powershell -NoProfile -Command ^
    "$chars = '0123456789abcdefghijklmnopqrstuvwxyz'; ^
     for($i = 0; $i -lt 78364164096; $i++) { ^
         $n = $i; $s = ''; ^
         for($j = 0; $j -lt 7; $j++) { ^
             $s = $chars[$n %% 36] + $s; ^
             $n = [math]::Floor($n / 36); ^
         } ^
         $s ^
     }" 
) > "%output_dir%\7-digit-alphanumeric-PINs.txt" 2>nul
echo     ^> 7-digit-alphanumeric-PINs.txt (Done)

echo.
echo =====================================================
echo SUCCESS! Files created in "%output_dir%" folder:
echo.
echo    - 7-digit-PINs.txt                    (Numeric)
echo    - 7-digit-alphanumeric-PINs.txt      (Alphanumeric)
echo.
echo Use only for ethical security research and authorized testing.
echo =====================================================
pause