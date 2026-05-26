@echo off
title Safe Educational 9-Digit PIN Generator
setlocal EnableDelayedExpansion

echo =====================================================
echo       Safe Educational 9-Digit PIN Generator
echo       Generating Numeric + Alphanumeric
echo =====================================================
echo.

set "output_dir=pins"
if not exist "%output_dir%" mkdir "%output_dir%"

echo Generating 9-digit files in "%output_dir%" folder...
echo.

:: === 9-Digit Numeric (000000000 to 999999999) ===
echo Creating 9-digit-PINs.txt (Numeric)...
echo     WARNING: This is VERY LARGE (~1 Billion lines)
echo     File size will be around 8-10 GB. It may take a long time.
echo     Please be patient...
(
    powershell -NoProfile -Command ^
    "0..999999999 | ForEach-Object { '{0:D9}' -f $_ }" 
) > "%output_dir%\9-digit-PINs.txt" 2>nul
echo     ^> 9-digit-PINs.txt (Done)

:: === 9-Digit Alphanumeric ===
echo.
echo Creating 9-digit-alphanumeric-PINs.txt ...
echo     WARNING: IMPOSSIBLE SIZE (101+ TRILLION combinations)
echo     This will almost certainly crash or freeze your PC.
echo     Skipping Alphanumeric for 9 digits to prevent crash...
echo     (Alphanumeric skipped)

echo.
echo =====================================================
echo FINISHED! Files created in "%output_dir%" folder:
echo.
echo    - 9-digit-PINs.txt          (Numeric only)
echo.
echo Use only for ethical security research and authorized testing.
echo =====================================================
pause