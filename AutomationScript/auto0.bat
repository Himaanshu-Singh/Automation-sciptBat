@echo off
echo Starting Appium GUI...

:: Navigate to the directory containing node.js
cd /d "C:\Program Files\nodejs"

:: Start Appium GUI
start cmd /k "node C:\Users\himanshu.singh\AppData\Roaming\npm\node_modules\appium\build\lib\main.js"

:: Pause to allow the Appium GUI to start
timeout /t 5 /nobreak
cd /d "C:\Users\himanshu.singh\Downloads\robotframework\robotframework\TestCases"
python3 -m robot ListingDetailPage.robot
Python3 -m robot colc.robot
python3 -m robot BookNow-Android.robot
python3 -m robot EnquireNow.robot
python3 -m robot InstantPayment-Android.robot
python3 -m robot Joinwaitlist.robot
pause
