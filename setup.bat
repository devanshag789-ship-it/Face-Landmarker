@echo off
cd /d "%~dp0"

if not exist ".venv\Scripts\python.exe" (
    py -m venv .venv
    if errorlevel 1 exit /b 1
    .venv\Scripts\python.exe -m pip install -r requirements.txt
)

.venv\Scripts\python.exe Face_Landmarker.py
pause
