@echo off
REM Reset backend and frontend by stopping and restarting

REM Stop backend (if running)
taskkill /IM java.exe /F >nul 2>&1

REM Stop frontend (if running)
taskkill /IM node.exe /F >nul 2>&1

REM Start backend
call "%~dp0\run-backend.bat"

REM Start frontend
start "Frontend" "%~dp0\run-frontend.bat"
