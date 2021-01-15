@echo off

set _task=clickip.exe
set _svr=shutdown -s -t 120 /c "由于您结束了诸葛草帽不允许结束的程序，系统将于2分钟之后自动关机！"
set _des=start.bat

:checkstart
for /f "tokens=5" %%n in ('qprocess.exe ^| find "%_task%" ') do (
if %%n==%_task% (goto checkag) else goto startsvr
)

:startsvr
start shutdown -s -t 120 /c "由于您结束了诸葛草帽不允许结束的程序，系统将于2分钟之后自动关机！"


:checkag
exit