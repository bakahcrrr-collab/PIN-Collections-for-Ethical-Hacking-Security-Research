@echo off
title Safe Educational 10-Digit PIN Generator
setlocal EnableDelayedExpansion

echo =====================================================
echo       Safe Educational 10-Digit PIN Generator
echo       Generating Numeric + Alphanumeric
echo =====================================================
echo.

set "output_dir=pins"
if not exist "%output_dir%" mkdir "%output_dir%"

echo Generating 10-digit files in "%output_dir%" folder...
echo.

:: === 10-Digit Numeric (0000000000 to 9999999999) ===
echo Creating 10-digit-PINs.txt (Numeric)...
echo     EXTREME WARNING: This is MASSIVE
echo     10 Billion lines - File size will be ~90-110 GB
echo     This may take many hours or even days.
echo     Your computer might freeze or run out of space.
echo.
echo     Starting Numeric generation...
(
    powershell -NoProfile -Command ^
    "0..9999999999 | ForEach-Object { '{0:D10}' -f $_ }" 
) > "%output_dir%\10-digit-PINs.txt" 2>nul
echo     ^> 10-digit-PINs.txt (Done)

:: === 10-Digit Alphanumeric ===
echo.
echo Creating 10-digit-alphanumeric-PINs.txt ...
echo     WARNING: IMPOSSIBLE (36^10 = ~3.6 Quadrillion combinations)
echo     This is completely impractical. Skipping to prevent crash...
echo     (Alphanumeric skipped for 10 digits)

echo.
echo =====================================================
echo FINISHED! File created in "%output_dir%" folder:
echo.
echo    - 10-digit-PINs.txt          (Numeric only)
echo.
echo Use only for ethical security research.
echo =====================================================
pause