::����ʹ�÷�����call :nxn "98" ok 10 2
::call :nxn "��ת������" �������ı����� ��ת�����Ľ��� ��ת���ɵĽ���
::Ĭ�Ͻ� 10���� ת��Ϊ 2���ƣ��������в����� 10 2��
::http://bbs.bathome.net/viewthread.php?tid=3372
:nXn ������ƻ�ת @��� @bbs.bathome.net����װ��
@echo off&setlocal enabledelayedexpansion
if "%~4"=="" (set /a q=10,h=2)else (set /a q=%~3,h=%~4)
set "str=0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
if %q% gtr %h% (set max=%q%) else set max=%h%
for /l %%a in (0 1 %max%)do set .%%a=!str:~%%a,1!&set ".!str:~%%a,1!=%%a"
set sun=&set jie=&set "var=%~1"&set /a nnn=1,num=0
for /l %%a in (0 1 100) do if not "!var:~%%a,1!"=="" (
for %%b in (!var:~%%a^,1!)do set sun=!.%%b! !sun!)
for %%a in (!sun!) do set /a num=%%a*nnn+num,nnn*=q
:10����תn����
set /a yu=num%%h,num/=h
set "jie=!.%yu%!!jie!"&if !num! gtr 0 goto 10����תn����
endlocal&set %~2=%jie%&goto :EOF