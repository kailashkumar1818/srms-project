@echo off
echo ========================================
echo   Building SRMS Backend Server
echo ========================================
echo.

echo Compiling server.cpp...
g++ backend/server.cpp -o backend/server.exe -lws2_32

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ✓ Build successful!
    echo Executable: backend/server.exe
    echo.
    
    choice /C YN /M "Do you want to start the server now"
    if %ERRORLEVEL% EQU 1 (
        echo.
        echo Starting server...
        cd backend
        server.exe
    )
) else (
    echo.
    echo ✗ Build failed!
    echo Please check for compilation errors above.
)

echo.
pause
