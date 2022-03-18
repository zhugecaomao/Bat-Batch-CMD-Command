::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:FileSizeComp %file% %operand% %size%
::
:: 作者：Ritchie Lawrence, 2003-08-22. 版本 1.0
::
:: 功能：比较指定文件的大小。如果结果为真，Errorlevel 被设置为 0，如果结果为
::       假，Errorlevel 被设置为 1，如果找不到文件，Errorlevel 被设置为 0。
::       适用于 NT4/2000/XP/2003.
::
:: 参数：%1 待比较的文件（传值调用）
::       %2 比较操作符 <EQU | NEQ | LSS | LEQ | GTR | GEQ> （传值调用）
::       %3 以字节为单位的待比较的大小（传值调用）
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
setlocal ENABLEEXTENSIONS & set "filter=2^>nul^|findstr/b /v /c:" ""
for /f "tokens=3" %%a in ('dir/-c %1 %filter%') do set z=%%a 0000000000000
if not defined z (endlocal & fc;: 2>nul & goto :EOF) else (set z=%z:~0,13%)
set "c=%3 0000000000000" & call set "c=%%c:~0,13%%"
for /f "tokens=1-4" %%a in ("%z% %c%") do set "z=%%b%%a" & set "c=%%d%%c"
(md;2>nul & if "%z%" %2 "%c%" ver>nul) & (endlocal & goto:EOF)
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::  