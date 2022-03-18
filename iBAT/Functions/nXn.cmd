::函数使用方法：call :nxn "98" ok 10 2
::call :nxn "被转换的数" 保存结果的变量名 被转换数的进制 需转换成的进制
::默认将 10进制 转换为 2进制（即上例中不输入 10 2）
::http://bbs.bathome.net/viewthread.php?tid=3372
:nXn 任意进制互转 @随风 @bbs.bathome.net（封装）
@echo off&setlocal enabledelayedexpansion
if "%~4"=="" (set /a q=10,h=2)else (set /a q=%~3,h=%~4)
set "str=0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
if %q% gtr %h% (set max=%q%) else set max=%h%
for /l %%a in (0 1 %max%)do set .%%a=!str:~%%a,1!&set ".!str:~%%a,1!=%%a"
set sun=&set jie=&set "var=%~1"&set /a nnn=1,num=0
for /l %%a in (0 1 100) do if not "!var:~%%a,1!"=="" (
for %%b in (!var:~%%a^,1!)do set sun=!.%%b! !sun!)
for %%a in (!sun!) do set /a num=%%a*nnn+num,nnn*=q
:10进制转n进制
set /a yu=num%%h,num/=h
set "jie=!.%yu%!!jie!"&if !num! gtr 0 goto 10进制转n进制
endlocal&set %~2=%jie%&goto :EOF