@ECHO OFF
:: This for loop is apparently the only way to put the output of command into a variable.
:: It's the same tutorial all over the internet. I need to switch to linux.
FOR /F "tokens=*" %%g IN ('hostname') do (SET name=%%g) 
FOR /F "tokens=*" %%h IN ('time /t') do (SET time=%%h)
:: Same thing for the date, take from: https://stackoverflow.com/questions/19131029/how-to-get-date-in-bat-file
FOR /F "tokens=1-4 delims=/ " %%i in ("%date%") do (
     set dow=%%i
     set month=%%j
     set day=%%k
     set year=%%l
) 
set datestr=%month%_%day%_%year%
:: Them just a git hub quick save.
git pull
git add .
git commit -m "Quick saving from %name%, on %datestr% @ %time%"
git push