@echo off
title Safe Educational 5-Digit PIN Generator
setlocal EnableDelayedExpansion

echo =====================================================
echo       Safe Educational 5-Digit PIN Generator
echo =====================================================
echo.

set "output_dir=pins"
if not exist "%output_dir%" mkdir "%output_dir%"

echo Generating 5-digit files...
echo.

:: 5-Digit Numeric (00000 to 99999)
echo Creating 5-digit-PINs.txt ...
(
    powershell -NoProfile -Command ^
    "0..99999 | ForEach-Object { '{0:D5}' -f $_ }" 
) > "%output_dir%\5-digit-PINs.txt" 2>nul
echo     ^> 5-digit-PINs.txt (Done)

:: 5-Digit Alphanumeric 
echo Creating 5-digit-alphanumeric-PINs.txt ...
(
    powershell -NoProfile -Command ^
    "$chars = '0123456789abcdefghijklmnopqrstuvwxyz'; ^
     for($i = 0; $i -lt 60466176; $i++) { ^
         $n = $i; $s = ''; ^
         for($j = 0; $j -lt 5; $j++) { ^
             $s = $chars[$n %% 36] + $s; ^
             $n = [math]::Floor($n / 36); ^
         } ^
         $s ^
     }" 
) > "%output_dir%\5-digit-alphanumeric-PINs.txt" 2>nul
echo     ^> 5-digit-alphanumeric-PINs.txt (Done)

echo.
echo =====================================================
echo SUCCESS! Files created in "%output_dir%" folder:
echo.
echo    - 5-digit-PINs.txt
echo    - 5-digit-alphanumeric-PINs.txt
echo.
echo Use only for ethical security research.
echo =====================================================
pause