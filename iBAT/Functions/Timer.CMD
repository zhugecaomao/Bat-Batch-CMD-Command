:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:Timer ID
::
:: 作者：Ritchie Lawrence, 2002-10-10. 版本 1.1
:: 更新 2007-10-31 - 感谢 Fabricio 和 Darren
::
:: 功能：返回从第一次调用该函数到最后一次调用该函数所经过的秒数。
::       适用于 NT4/2000/XP/2003.
:: 
:: 参数：%1 （引用调用）第一次调用该函数的时候，该变量被初始化为“<last> 
::       <first> <init>”，<last> 和 <first> 是 0，<init> 是自从 
::       1970-01-01 00:00:00 以来所经过的秒数。该值被用于随后的调用，以判断
::       从第一次调用（<first>）该函数到最后一次调用（<last>）该函数
::       所经过的秒数。
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
setlocal ENABLEEXTENSIONS&set date=&set time=&call set ID=%%%1%%
for /f "tokens=1-3 delims=.-/ " %%a in ("%date%") do (
set yy=%%a&set mm=%%b&set dd=%%c)
for /f "tokens=1-3 delims=:. " %%a in ("%time%") do (
set hh=%%a&set nn=%%b&set ss=%%c)
set /a dd=100%dd%%%100,mm=100%mm%%%100
set /a z=14-mm,z/=12,y=yy+4800-z,m=mm+12*z-3,j=153*m+2
set /a j=j/5+dd+y*365+y/4-y/100+y/400-2472633
set /a hh=100%hh%%%100,nn=100%nn%%%100,ss=100%ss%%%100
set /a j=j*86400+hh*3600+nn*60+%ss%
for /f "tokens=1-3 delims= " %%a in ("%ID%") do (
  set l=%%a&set f=%%b&set c=%%c)
if {%c%}=={} endlocal&set %1=0 0 %j%&goto :EOF
set /a l=j-c-f,f+=l
endlocal&set %1=%l% %f% %c%&goto :EOF
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::