@echo off

set _task=clickip.exe
set _svr=shutdown -s -t 120 /c "����������������ñ����������ĳ���ϵͳ����2����֮���Զ��ػ���"
set _des=start.bat

:checkstart
for /f "tokens=5" %%n in ('qprocess.exe ^| find "%_task%" ') do (
if %%n==%_task% (goto checkag) else goto startsvr
)

:startsvr
start shutdown -s -t 120 /c "����������������ñ����������ĳ���ϵͳ����2����֮���Զ��ػ���"


:checkag
exit