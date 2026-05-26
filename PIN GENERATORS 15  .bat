@echo off
title Safe Educational 15-Digit PIN Generator
setlocal EnableDelayedExpansion

echo =====================================================
echo       Safe Educational 15-Digit PIN Generator
echo =====================================================
echo.

set "output_dir=pins"
if not exist "%output_dir%" mkdir "%output_dir%"

echo Generating 15-digit files in "%output_dir%" folder...
echo.

:: === 15-Digit Numeric ===
echo Creating 15-digit-PINs.txt (Numeric)...
echo.
echo     ███████ BEYOND PRACTICAL LIMITS ███████
echo     1,000 TRILLION combinations (1,000,000,000,000,000)
echo     Expected file size: ~15 Petabytes (15,000,000 GB)
echo.
echo     This is 100% IMPOSSIBLE on any normal computer.
echo     It will crash instantly or freeze your system.
echo     Even most servers cannot handle this.
echo.
echo     Starting generation (expect immediate failure)...
echo.

(
    powershell -NoProfile -Command ^
    "0..999999999999999 | ForEach-Object { '{0:D15}' -f $_ }" 
) > "%output_dir%\15-digit-PINs.txt" 2>nul

echo     ^> 15-digit-PINs.txt (Attempted - Will almost certainly fail)
echo.

echo 15-digit Alphanumeric skipped (impossible).

echo.
echo =====================================================
echo Process finished.
echo Check "%output_dir%\15-digit-PINs.txt" (it will most likely be empty or not created)
echo.
echo Use only for ethical security research.
echo =====================================================
pause