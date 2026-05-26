@echo off
title Safe Educational 11-Digit PIN Generator
setlocal EnableDelayedExpansion

echo =====================================================
echo       Safe Educational 11-Digit PIN Generator
echo =====================================================
echo.

set "output_dir=pins"
if not exist "%output_dir%" mkdir "%output_dir%"

echo Generating 11-digit files in "%output_dir%" folder...
echo.

:: === 11-Digit Numeric ===
echo Creating 11-digit-PINs.txt (Numeric)...
echo.
echo     ███████ EXTREME WARNING ███████
echo     100 Billion combinations (100,000,000,000)
echo     Expected file size: ~1.1 Terabyte (1100 GB)
echo.
echo     This is NOT practical on normal computers.
echo     It will likely crash, freeze, or fill your hard drive.
echo     Generating anyway (Numeric only)...
echo.

(
    powershell -NoProfile -Command ^
    "0..99999999999 | ForEach-Object { '{0:D11}' -f $_ }" 
) > "%output_dir%\11-digit-PINs.txt" 2>nul

echo     ^> 11-digit-PINs.txt (Attempted)
echo.

:: Alphanumeric is skipped (impossible)
echo 11-digit Alphanumeric skipped (impossible size).

echo.
echo =====================================================
echo Process finished.
echo File (if created): %output_dir%\11-digit-PINs.txt
echo.
echo Use only for ethical security research and authorized testing.
echo =====================================================
pause