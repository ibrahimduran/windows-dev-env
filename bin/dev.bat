@echo off

if [%1]==[] goto usage
if "%~1"=="start" goto start
if "%~1"=="stop" goto stop
goto :eof

:start
vboxmanage startvm dev --type headless
goto :eof

:stop
vboxmanage controlvm dev poweroff soft
goto :eof

:usage
@echo Usage: dev start^|stop
exit /B 1
