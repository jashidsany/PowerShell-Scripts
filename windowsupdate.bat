@echo off
echo Do you want enable or disable Windows Update?

set task=
set /p task=Please make a selection:

pause
if /i  '%task%' == 'disable' goto disableupdate
if /i '%task%' == 'enable' goto enableupdate
pause

:disableupdate
sc config wuauserv start= disabled
net stop wuauserv
goto end

:enableupdate
sc config wuauserv start= demand
goto end

:end
pause
