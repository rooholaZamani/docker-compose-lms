@echo off
REM Run Spring Boot backend
cd /d "%~dp0\backend"
call mvnw spring-boot:run
