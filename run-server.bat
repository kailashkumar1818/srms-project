@echo off
echo ========================================
echo   Starting SRMS Backend Server
echo ========================================
echo.

if not exist backend\server.exe (
    echo Error: server.exe not found!
    echo Please run build-server.bat first.
    echo.
    pause
    exit /b 1
)

cd backend
echo Server starting on http://localhost:8080
echo Press Ctrl+C to stop the server
echo.
server.exe
