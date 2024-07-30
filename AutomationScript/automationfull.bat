@echo off
echo Starting Appium GUI...

:: Navigate to the directory containing node.js
cd /d "C:\Program Files\nodejs"

:: Start Appium GUI
start cmd /k "node C:\Users\himanshu.singh\AppData\Roaming\npm\node_modules\appium\build\lib\main.js"

:: Pause to allow the Appium GUI to start
timeout /t 5 /nobreak


cd /d "C:\Users\himanshu.singh\Downloads\robotframework\robotframework\TestCases"

echo Running BookNow-Android.robot...
python3 -m robot BookNow-Android.robot 
echo Finished running BookNow-Android.robot

echo Running colc.robot...
python3 -m robot colc.robot 
echo Finished running colc.robot

echo Running EnquireNow.robot...
python3 -m robot EnquireNow.robot 
echo Finished running EnquireNow.robot

echo Running InstantPayment-Android.robot...
python3 -m robot InstantPayment-Android.robot 
echo Finished running InstantPayment-Android.robot

echo Running Joinwaitlist.robot...
python3 -m robot Joinwaitlist.robot 
echo Finished running Joinwaitlist.robot

echo All tests attempted.
pause
