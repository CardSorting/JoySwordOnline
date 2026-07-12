@echo off
setlocal EnableExtensions
cd /d "%~dp0"
python scripts\joysword.py %*
exit /b %errorlevel%
