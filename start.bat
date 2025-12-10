@echo off
echo ========================================
echo   SRMS - Quick Start Guide
echo ========================================
echo.
echo Choose an option:
echo.
echo 1. Build and run Console Application
echo 2. Build and run Web Server
echo 3. Open Web Frontend
echo 4. Exit
echo.

choice /C 1234 /N /M "Enter your choice (1-4): "

if %ERRORLEVEL% EQU 1 (
    call build-console.bat
) else if %ERRORLEVEL% EQU 2 (
    call build-server.bat
) else if %ERRORLEVEL% EQU 3 (
    echo.
    echo Opening web frontend...
    start frontend\index.html
    echo.
    echo Note: Make sure the server is running!
    echo Run option 2 if you haven't started the server yet.
    pause
) else (
    exit
)
