:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:IsRunning %svc%
::
:: 作者：Ritchie Lawrence, 2003-10-08. 版本 1.0
::
:: 功能：如果指定的服务正在运行，errorlevel 被设置为 0，否则被设置为 1。
::       适用于 NT4/2000/XP/2003.
:: 
:: 参数：%1 待检测服务的显示名称（传值调用）
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
setlocal ENABLEEXTENSIONS & set "svc=%1"
set svc=%svc:"=%
net start | findstr/i /b /e /c:"   %svc%" >nul
endlocal & goto :EOF
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::  