@echo off
REM =========================================================
REM  compile.bat - Build EasyCharge with GCC (MSYS2)
REM  Double-click or run from any terminal.
REM =========================================================

SET GCC=C:\msys64\mingw64\bin\gcc.exe
SET SRC=src
SET OUT=build

IF NOT EXIST "%GCC%" (
    echo ERROR: GCC not found at %GCC%
    echo Please install MSYS2 from https://www.msys2.org/
    pause
    exit /b 1
)

IF NOT EXIST "%OUT%" mkdir "%OUT%"

echo Compiling EasyCharge...

"%GCC%" -Wall -Wextra -g -std=c99 -I%SRC% ^
    %SRC%\main.c ^
    %SRC%\queue.c ^
    %SRC%\port_list.c ^
    %SRC%\car_bst.c ^
    %SRC%\station_bst.c ^
    %SRC%\file_io.c ^
    %SRC%\menu_ops.c ^
    -o %OUT%\easycharge.exe ^
    -lm

IF %ERRORLEVEL% EQU 0 (
    echo.
    echo Build successful! Executable: build\easycharge.exe
) ELSE (
    echo.
    echo Build FAILED. See errors above.
)

pause
