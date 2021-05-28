@ECHO off
FOR /F "tokens=2-4 delims=/ " %%A IN ('date /t') do (set DATE=%%C-%%B-%%A)
FOR /F "tokens=1-2 delims=/:" %%a IN ('time /t') do (set TIME=%%a:%%b)
FOR /F "tokens=1,2* delims==" %%A IN (deploy.ini) DO (
set %%A=%%B
)
set LOGFILE=%cd%\logs\%DATE%_deploy.log
mkdir logs
echo ----------------------- %DATE% %TIME% ----------------------- >> "%LOGFILE%"
call :sub >> "%LOGFILE%"


:sub
cd %DEPLOY-TO%
git remote remove origin
git remote add origin "%DEPLOY-FROM%"
git pull origin %BRANCH%