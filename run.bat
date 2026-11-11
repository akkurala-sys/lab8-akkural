@echo off
cd /d "%~dp0"
echo === 1. Creating .venv ===
if not exist .venv python -m venv .venv
call .venv\Scripts\activate.bat

echo === 2. Installing packages ===
python -m pip install -r requirements.txt

echo === 3. Running programs ===
python main.py
python report.py

echo === 4. Saving version to Git ===
git init
git add .
git commit -m "Module grades, programs main and report"

echo.
echo Done. Now upload the files to GitHub.
pause
