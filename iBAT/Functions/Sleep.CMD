:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:Sleep %secs%
::
:: 作者：Ritchie Lawrence, 2003-09-16. 版本 1.0
::
:: 功能：在批处理文件中延时指定秒数。
::       适用于 NT4/2000/XP/2003.
:: 
:: 参数：%1 延时的秒数（传值调用）
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
setlocal ENABLEEXTENSIONS & set /a n=%1+1
ping -n %n% 127.0.0.1 >nul
endlocal & goto :EOF
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::  