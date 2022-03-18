::::::::::::::::::::::::迭代法计算开方:::::::::::::::::::::::::
:: 使用方法： call :sqrt Num retvar Acc                      ::
::  原理来源于牛顿迭代法                                     ::
::  只能计算1-2147483647/(10^%3)，保留 %3 位小数，默认不保留 ::
::  作者：batman                                             ::
::  出处：http://bbs.bathome.net/viewthread.php?tid=4322     ::
::::::::::::::::::::::::迭代法计算开方:::::::::::::::::::::::::

:sqrt Num retvar Acc
setlocal enabledelayedexpansion&(set %2=&set/an=%1,acc=%30/10)2>nul||(
echo call :sqrt Num retvar Acc&&exit /b 1)
for /l %%a in (1 1 %~3) do set z=!z!00
for /l %%a in (1,1,19) do set /a n=(n+%n%%z%/n)/2||exit/b1
if %acc% gtr 0 set "n=!n:~,-%acc%!.!n:~-%acc%!"
endlocal&set %2=%n%&if /i %0==:sqrt exit/b0
