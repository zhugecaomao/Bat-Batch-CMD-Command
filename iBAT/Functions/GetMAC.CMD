:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:GetMAC mac
::
:: 作者：Ritchie Lawrence, 2003-09-24. 版本 1.0
::
:: 功能：主网卡的 MAC 地址，格式为XX-XX-XX-XX-XX-XX。
::       如果失败，将返回 00-00-00-00-00-00
::       适用于 NT4/2000/XP/2003.
:: 
:: 参数：%1 该变量用于接收 MAC 地址（引用调用）
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
setlocal ENABLEEXTENSIONS&set "m=00-00-00-00-00-00"&set "i="&set "j="&set "n=0"
for /f "tokens=3" %%a in ('route print^|find "0.0.0.0"') do if %%a lss a set "i=%%a"&set "j=1"&set "j="
if not defined i endlocal & set "%1=%m%" & goto :EOF
for /f "tokens=2 delims=:" %%a in ('
ipconfig/all^|findstr /r "Physical 物理 Gateway 网关"') do (
if "%%a"==" %i%" (call set m=%%last%%)else set last=%%a)
endlocal & set "%1=%m%" & goto :EOF
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::  