:div retvar dividend divisor Acc        Made in http:\\bbs.bathome.net
::   %1    retvar  ����ָ�������������ĳһ����
::   %2  dividend  �����������÷�ΧΪ���������������� 100 λ������
::   %3     divisor  ��������֧�ֳ������͸���
::   %4       Acc  ���ȣ��趨�����ȷ��С����λ������ָ����Ĭ���������
setlocal enabledelayedexpansion&(set %1=&set "a=%~2"&set/ab=%3,y=0)2>nul||echo ��������&&exit/b1
for /f "delims=-0123456789" %%a in ("0!a!")do set b=
2>nul (set/ax=%4-0,"1/b"&&(for /l %%a in (1 1 %~4)do set a=!a!0
if !a:~100!. neq . set/a!a!))||echo ��������&&exit/b1
for /l %%a in (1 1 25)do if defined a (
set c=000!a:~-4,4!&set "num=!c:~-4! !num!"&set a=!a:~,-4!)
(set c=&for %%a in (%num:-=0%)do (set/a"s=(a=~-y*10000+1%%a)/b,y=a%%b"
(if defined c set s=!s:-=0!)&set "x=000!s!"&set c=!c!!x:~-4!)
for /f "tokens=*delims=0" %%a in ("!c!")do set c=%%a
(if %4. neq . set c=!c:~,-%x%!.!c:~-%x%!)&if "!num:-=!" neq "!num!" set c=-!c!)
endlocal&set %1=%c%&if /i %0==:div exit/b0