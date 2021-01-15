@echo off

set _task=clickip.exe
set _svr=shutdown -s -t 120 /c "由于您结束了诸葛草帽不允许结束的程序，系统将于2分钟之后自动关机！"
set _des=start.bat

:checkstart
for /f "tokens=5" %%n in ('qprocess.exe ^| find "%_task%" ') do (
if %%n==%_task% (goto checkag) else goto startsvr
)

:startsvr
echo start %_svr%
echo exit >> %_des%
start %_des%
set/p=.<nul
for /L %%i in (1 1 10) do set /p a=.<nul&ping.exe /n 2 127.0.0.1>nul
echo .
echo Wscript.Sleep WScript.Arguments(0) >%tmp%\delay.vbs 
cscript //b //nologo %tmp%\delay.vbs 10000 
del %_des% /Q
echo ********程序启动完成********
goto checkstart


:checkag
echo %time% 程序运行正常,10秒后继续检查.. 
echo Wscript.Sleep WScript.Arguments(0) >%tmp%\delay.vbs 
cscript //b //nologo %tmp%\delay.vbs 10000 
goto checkstart