@echo off
title Safe Educational 8-Digit PIN Generator
setlocal EnableDelayedExpansion

echo =====================================================
echo       Safe Educational 8-Digit PIN Generator
echo       Generating Numeric + Alphanumeric
echo =====================================================
echo.

set "output_dir=pins"
if not exist "%output_dir%" mkdir "%output_dir%"

echo Generating 8-digit files in "%output_dir%" folder...
echo.

:: === 8-Digit Numeric (00000000 to 99999999) ===
echo Creating 8-digit-PINs.txt (Numeric)...
echo     Please wait... This is very large (~100 million lines)
(
    powershell -NoProfile -Command ^
    "0..99999999 | ForEach-Object { '{0:D8}' -f $_ }" 
) > "%output_dir%\8-digit-PINs.txt" 2>nul
echo     ^> 8-digit-PINs.txt (Done)

:: === 8-Digit Alphanumeric ===
echo.
echo Creating 8-digit-alphanumeric-PINs.txt ...
echo     WARNING: EXTREMELY LARGE (2.8 TRILLION combinations)
echo     This may take many hours or crash your computer.
echo     Generating anyway...
(
    powershell -NoProfile -Command ^
    "$chars = '0123456789abcdefghijklmnopqrstuvwxyz'; ^
     for($i = 0; $i -lt 2821109907456; $i++) { ^
         $n = $i; $s = ''; ^
         for($j = 0; $j -lt 8; $j++) { ^
             $s = $chars[$n %% 36] + $s; ^
             $n = [math]::Floor($n / 36); ^
         } ^
         $s ^
     }" 
) > "%output_dir%\8-digit-alphanumeric-PINs.txt" 2>nul
echo     ^> 8-digit-alphanumeric-PINs.txt (Done)

echo.
echo =====================================================
echo SUCCESS! Files created in "%output_dir%" folder:
echo.
echo    - 8-digit-PINs.txt                    (Numeric)
echo    - 8-digit-alphanumeric-PINs.txt      (Alphanumeric)
echo.
echo Use only for ethical security research.
echo =====================================================
pause