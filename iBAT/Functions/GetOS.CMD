:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:GetOS os
::
:: 作者：Ritchie Lawrence, 2003-09-18. 版本 1.0
::
:: 功能：获取操作系统版本。
::       适用于 NT4/2000/XP/2003.
:: 
:: 参数：%1 该变量用于接收操作系统版本（引用调用）
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
setlocal ENABLEEXTENSIONS & set "cmd=net config work^|findstr/b /c:"软件版本""
for /f "tokens=1-2 delims=." %%a in ('%cmd%') do (
  for %%z in (%%a%%b) do set o=%%z)
endlocal & set "%1=%o:40=NT40%" & (goto :EOF)
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::  