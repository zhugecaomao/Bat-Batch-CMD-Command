:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:GetDG dg
::
:: 作者：Ritchie Lawrence, 2003-09-22. 版本 1.0
::
:: 功能：获取默认网关。如果失败，将返回 0.0.0.0
::       适用于 NT4/2000/XP/2003.
:: 
:: 参数：%1 该变量用于接收默认网关（引用调用）
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
setlocal ENABLEEXTENSIONS & set "g=0.0.0.0" & set "j="
for /f "tokens=3" %%a in ('route print^|findstr 0.0.0.0.*0.0.0.0') do (
  if not defined j for %%b in (%%a) do set "g=%%b" & set "j=1")
endlocal & set "%1=%g%" & goto :EOF
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::  