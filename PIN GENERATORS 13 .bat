@echo off
title Safe Educational 13-Digit PIN Generator
setlocal EnableDelayedExpansion

echo =====================================================
echo       Safe Educational 13-Digit PIN Generator
echo =====================================================
echo.

set "output_dir=pins"
if not exist "%output_dir%" mkdir "%output_dir%"

echo Generating 13-digit files in "%output_dir%" folder...
echo.

:: === 13-Digit Numeric ===
echo Creating 13-digit-PINs.txt (Numeric)...
echo.
echo     ███████ EXTREME DANGER ZONE ███████
echo     10 TRILLION combinations (10,000,000,000,000)
echo     Expected file size: ~130+ Terabytes (TB)
echo.
echo     This is COMPLETELY IMPRACTICAL.
echo     Your computer will almost certainly:
echo       • Run out of disk space
echo       • Freeze or crash
echo       • Take weeks/months (if it even starts)
echo.
echo     Starting generation (expect failure)...
echo.

(
    powershell -NoProfile -Command ^
    "0..9999999999999 | ForEach-Object { '{0:D13}' -f $_ }" 
) > "%output_dir%\13-digit-PINs.txt" 2>nul

echo     ^> 13-digit-PINs.txt (Attempted)
echo.

echo 13-digit Alphanumeric skipped (impossible).

echo.
echo =====================================================
echo Process finished.
echo Check "%output_dir%\13-digit-PINs.txt" (most likely failed)
echo.
echo Use only for ethical security research.
echo =====================================================
pause