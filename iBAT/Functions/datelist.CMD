:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: ˵���� call datelist StartDate EndDate OutputFile delims              ::
::                                                                       ::
::          %1  StartDate  ��ʽΪ YYYYMMDD���Ǵ��������뽫�´�           ::
::          %2  EndDate    ��ʽΪ YYYYMMDD���Ǵ��������뽫�´�           ::
::          %3  OutputFile ����һ����Ч�ļ������Թ��������Ҫ�������Ļ��::
::                         ����Ϊ con                                    ::
::          %4  delims     ������֮��ķָ������ɲ����Ϊ���š��ֺš�  ::
::                         �ո���Ʊ�����Ĭ�Ϸָ����������˫���ţ��ָ�  ::
::                         ��������һ���ַ���������Ч��                  ::
::                                                                       ::
:: ������Ҫ���ⲿ���� findstr.exe ����ɸѡ�������ȷ�� %path% ������Ч�� ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:datelist StartDate(YYYYMMDD) EndDate(YYYYMMDD) OutputFile    ȫ��ռ��
setlocal enabledelayedexpansion&set f=&if \%4 neq \ set "f=\%~4"&set f=!f:~,2!
(set/a"start=%~1","end=%~2","test/=^!start*^!end-1" 9>"%~3")2>nul||(
echo :datelist  StartDate(YYYYMMDD^)  EndDate(YYYYMMDD^) outputfile&exit/b1)
for /l %%a in (1 1 31)do set str=0%%a&set md=!md! !str:~-2!
(for /l %%a in (%start:~,-4% 1 %end:~,-4%)do for %%b in (%md:~,36%) do for %%c in (%md%) do (
set/a"test/=(%%a%%b%%c-start|end-%%a%%b%%c)>>31"||echo %%a^%~4%%b^%~4%%c))>"$%~3.$" 2>nul
set f1="0[2469]f31 02f30 11f31 [13579][048]00f02f29 [02468][26]00f02f29"
set f2="[^2]f.. 12f.. 02f[0-1]. 02f2[0-8] ^[48]f02f29 ^[48]00f02f29 [02468][048]f02f29 [13579][26]f02f29"
if %4. neq . set f1=/rc:!f1: =" /c:"!&set f2=/rc:!f2: =" /c:"!
set f1=!f1:f=%f%!&set "f2=!f2:f=%f%!"
findstr /ve !f1! "$%~3.$"|findstr /e !f2!>%3&del /f "$%~3.$">nul 2>nul
if /i %0==:datelist exit/b0