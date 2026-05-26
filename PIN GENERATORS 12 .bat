@echo off
title Safe Educational 12-Digit PIN Generator
setlocal EnableDelayedExpansion

echo =====================================================
echo       Safe Educational 12-Digit PIN Generator
echo =====================================================
echo.

set "output_dir=pins"
if not exist "%output_dir%" mkdir "%output_dir%"

echo Generating 12-digit files in "%output_dir%" folder...
echo.

:: === 12-Digit Numeric ===
echo Creating 12-digit-PINs.txt (Numeric)...
echo.
echo     ███████ CRITICAL WARNING ███████
echo     1 TRILLION combinations (1,000,000,000,000)
echo     Expected file size: ~12 - 15 Terabytes (TB)
echo.
echo     This is IMPRACTICAL on normal computers.
echo     It will almost certainly fail due to:
echo       - Not enough disk space
echo       - Extremely long time (days/weeks)
echo       - System crash or freeze
echo.
echo     Starting Numeric generation (will likely fail)...
echo.

(
    powershell -NoProfile -Command ^
    "0..999999999999 | ForEach-Object { '{0:D12}' -f $_ }" 
) > "%output_dir%\12-digit-PINs.txt" 2>nul

echo     ^> 12-digit-PINs.txt (Attempted)
echo.

echo 12-digit Alphanumeric skipped (completely impossible).

echo.
echo =====================================================
echo Process finished.
echo Check "%output_dir%\12-digit-PINs.txt" (if it was created)
echo.
echo Use only for ethical security research.
echo =====================================================
pause