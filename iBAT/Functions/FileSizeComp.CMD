::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:FileSizeComp %file% %operand% %size%
::
:: ���ߣ�Ritchie Lawrence, 2003-08-22. �汾 1.0
::
:: ���ܣ��Ƚ�ָ���ļ��Ĵ�С��������Ϊ�棬Errorlevel ������Ϊ 0��������Ϊ
::       �٣�Errorlevel ������Ϊ 1������Ҳ����ļ���Errorlevel ������Ϊ 0��
::       ������ NT4/2000/XP/2003.
::
:: ������%1 ���Ƚϵ��ļ�����ֵ���ã�
::       %2 �Ƚϲ����� <EQU | NEQ | LSS | LEQ | GTR | GEQ> ����ֵ���ã�
::       %3 ���ֽ�Ϊ��λ�Ĵ��ȽϵĴ�С����ֵ���ã�
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
setlocal ENABLEEXTENSIONS & set "filter=2^>nul^|findstr/b /v /c:" ""
for /f "tokens=3" %%a in ('dir/-c %1 %filter%') do set z=%%a 0000000000000
if not defined z (endlocal & fc;: 2>nul & goto :EOF) else (set z=%z:~0,13%)
set "c=%3 0000000000000" & call set "c=%%c:~0,13%%"
for /f "tokens=1-4" %%a in ("%z% %c%") do set "z=%%b%%a" & set "c=%%d%%c"
(md;2>nul & if "%z%" %2 "%c%" ver>nul) & (endlocal & goto:EOF)
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::  