@echo off
REM =========================================================
REM  run.bat - Run EasyCharge
REM  Must run from the project root (so .txt files are found).
REM  Double-click or run from any terminal.
REM =========================================================

IF NOT EXIST "build\easycharge.exe" (
    echo ERROR: build\easycharge.exe not found.
    echo Please run compile.bat first.
    pause
    exit /b 1
)

echo Starting EasyCharge...
echo.
build\easycharge.exe
