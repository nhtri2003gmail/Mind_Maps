@echo off
echo %date% > date.txt
set /p d=<"date.txt"
del date.txt

echo %time% > time.txt
set /p t=<"time.txt"
del time.txt

cd "Mind Map"

git add .
git commit -m "%d%%t%"
git push origin master
pause