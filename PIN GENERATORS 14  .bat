@echo off
title Safe Educational 14-Digit PIN Generator
setlocal EnableDelayedExpansion

echo =====================================================
echo       Safe Educational 14-Digit PIN Generator
echo =====================================================
echo.

set "output_dir=pins"
if not exist "%output_dir%" mkdir "%output_dir%"

echo Generating 14-digit files in "%output_dir%" folder...
echo.

:: === 14-Digit Numeric ===
echo Creating 14-digit-PINs.txt (Numeric)...
echo.
echo     ███████ CRITICAL IMPOSSIBILITY ZONE ███████
echo     100 TRILLION combinations (100,000,000,000,000)
echo     Expected file size: ~1.4 Petabytes (1,400,000 GB)
echo.
echo     This is PHYSICALLY IMPOSSIBLE on normal computers.
echo     It will definitely:
echo       • Crash immediately
echo       • Fill all available disk space
echo       • Freeze your system
echo.
echo     Starting generation (expect instant failure)...
echo.

(
    powershell -NoProfile -Command ^
    "0..99999999999999 | ForEach-Object { '{0:D14}' -f $_ }" 
) > "%output_dir%\14-digit-PINs.txt" 2>nul

echo     ^> 14-digit-PINs.txt (Attempted - Most likely failed)
echo.

echo 14-digit Alphanumeric skipped (completely impossible).

echo.
echo =====================================================
echo Process finished.
echo Check "%output_dir%\14-digit-PINs.txt" (it probably didn't create)
echo.
echo Use only for ethical security research.
echo =====================================================
pause