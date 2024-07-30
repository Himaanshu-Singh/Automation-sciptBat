@echo off
echo Starting Appium GUI...

:: Navigate to the directory containing node.js
cd /d "C:\Program Files\nodejs"

:: Start Appium GUI
start cmd /k "node C:\Users\himanshu.singh\AppData\Roaming\npm\node_modules\appium\build\lib\main.js"

:: Pause to allow the Appium GUI to start
timeout /t 5 /nobreak

:: Run the first test
start cmd /c "colc.bat"

:: Pause to ensure the first test completes before starting the second
timeout /t 5 /nobreak

:: Run the second test
start cmd /c "ListingDetailPage.bat"