::http://bbs.bathome.net/viewthread.php?tid=3372
:2x10  2����ת 10���� @��� @bbs.bathome.net ����װ��
@echo off&setlocal enabledelayedexpansion
set /a nnn=1,num=0&set nn=&set "n=%~1"
set "n=!n:0= 0!"&set "n=!n:1= 1!"
for %%a in (!n!) do set "nn=%%a !nn!"
for %%a in (!nn!) do set /a num+=%%a*nnn,nnn*=2
endlocal&set %~2=%num%&goto :EOF