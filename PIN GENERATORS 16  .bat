@echo off
title Safe Educational 16-Digit PIN Generator
setlocal EnableDelayedExpansion

echo =====================================================
echo       Safe Educational 16-Digit PIN Generator
echo =====================================================
echo.

set "output_dir=pins"
if not exist "%output_dir%" mkdir "%output_dir%"

echo Generating 16-digit files in "%output_dir%" folder...
echo.

:: === 16-Digit Numeric ===
echo Creating 16-digit-PINs.txt (Numeric)...
echo.
echo     ███████ ABSOLUTE IMPOSSIBILITY ZONE ███████
echo     10,000 TRILLION combinations (10,000,000,000,000,000)
echo     Expected file size: ~160+ Petabytes (160,000,000 GB)
echo.
echo     This is COMPLETELY IMPOSSIBLE on Earth with current technology.
echo     Even nation-state supercomputers would struggle.
echo.
echo     Starting generation (will definitely fail)...
echo.

(
    powershell -NoProfile -Command ^
    "0..9999999999999999 | ForEach-Object { '{0:D16}' -f $_ }" 
) > "%output_dir%\16-digit-PINs.txt" 2>nul

echo     ^> 16-digit-PINs.txt (Attempted - Will fail)
echo.

echo 16-digit Alphanumeric skipped (beyond impossible).

echo.
echo =====================================================
echo Process finished.
echo Check "%output_dir%\16-digit-PINs.txt" (it will not be created)
echo.
echo Use only for ethical security research.
echo =====================================================
pause