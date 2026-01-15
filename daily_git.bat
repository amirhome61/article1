@echo off
set "msg=Daily update"
set /p "user_msg=Enter commit message (Default: Daily update): "
if not "%user_msg%"=="" set "msg=%user_msg%"

git add .
git commit -m "%msg%"
git push -u origin main
git --no-pager log --oneline
pause
