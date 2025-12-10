@echo off
echo ========================================
echo   Building SRMS Console Application
echo ========================================
echo.

echo Compiling main.cpp...
g++ backend/main.cpp -o backend/srms.exe

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ✓ Build successful!
    echo Executable: backend/srms.exe
    echo.
    
    choice /C YN /M "Do you want to run the application now"
    if %ERRORLEVEL% EQU 1 (
        echo.
        echo Starting SRMS...
        cd backend
        srms.exe
    )
) else (
    echo.
    echo ✗ Build failed!
    echo Please check for compilation errors above.
)

echo.
pause
