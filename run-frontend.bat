@echo off
REM Run Vite frontend
cd /d "%~dp0\frontend"
call npm install
call npm run dev --host 0.0.0.0
