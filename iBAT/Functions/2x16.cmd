::��4λһ�Σ��ֱ�ת��Ϊʮ������,���ؿ��ǳ���������
::http://bbs.bathome.net/viewthread.php?tid=3372
:2x16 ������ ת ʮ������  @��� @bbs.bathome.net ����װ��
@echo off&setlocal enabledelayedexpansion
set "str=0123456789ABCDEF"
set k=&set kk=&set xx=&set "x=000%~1"
set x=!x:0= 0!&set x=!x:1= 1!&set /a jj=0,ss=1
for %%a in (!x!) do set "xx=%%a !xx!"
for %%a in (!xx!) do (set /a jj+=%%a*ss,ss=ss*2
if !ss! equ 16 set k=!jj! !k!&set /a jj=0,ss=1)
for %%a in (!k!) do set kk=!kk!!str:~%%a,1!
endlocal&set %~2=%kk%&goto :EOF