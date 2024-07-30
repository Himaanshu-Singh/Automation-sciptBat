@echo off
setlocal enabledelayedexpansion

:: Define the path to Node.js and Appium
set NODE_PATH="C:\Program Files\nodejs"
set APPIUM_PATH="C:\Users\himanshu.singh\AppData\Roaming\npm\node_modules\appium\build\lib\main.js"

:: Define the test cases
set TESTS=BookNow-Android.robot colc.robot EnquireNow.robot InstantPayment-Android.robot Joinwaitlist.robot

:: Navigate to the directory containing the test cases
cd /d "C:\Users\himanshu.singh\Downloads\robotframework\robotframework\TestCases"

:: Function to start Appium server
:start_appium
echo Starting Appium server...
start /B cmd /c node %APPIUM_PATH% 
timeout /t 10 /nobreak
goto :eof

:: Function to stop Appium server
:stop_appium
echo Stopping Appium server...
taskkill /f /im node.exe 
timeout /t 5 /nobreak
goto :eof

:: Loop through each test case
for %%t in (%TESTS%) do (
    call :stop_appium
    call :start_appium

    echo Running %%t...
    python3 -m robot %%t > %%t.log 
    echo Finished running %%t
    echo Log for %%t:
    type %%t.log
    timeout /t 10 /nobreak
)

call :stop_appium
echo All tests attempted.
pause
