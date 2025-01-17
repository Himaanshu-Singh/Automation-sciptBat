@echo off
echo Starting Appium GUI...

:: Navigate to the directory containing node.js
cd /d "C:\Program Files\nodejs"

:: Start Appium GUI
start cmd /k "node C:\Users\himanshu.singh\AppData\Roaming\npm\node_modules\appium\build\lib\main.js"

:: Pause to allow the Appium GUI to start
timeout /t 10 /nobreak

cd /d "C:\Users\himanshu.singh\Downloads\robotframework\robotframework\TestCases"

echo Running BookNow-Android.robot...
python3 -m robot BookNow-Android.robot > BookNow-Android.log 2>&1
echo Finished running BookNow-Android.robot
timeout /t 5 /nobreak
taskkill /f /im node.exe 
timeout /t 5 /nobreak

echo Running colc.robot...
python3 -m robot colc.robot > colc.log 2>&1
echo Finished running colc.robot
timeout /t 5 /nobreak



echo All tests attempted.
pause
