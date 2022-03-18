:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:Uptime days hours mins [secs]
::
:: 作者：Ritchie Lawrence, 2003-09-24. 版本 1.0
::
:: 功能：获取自从上次系统启动经历的天数、小时数、分钟数、秒钟数。
::       适用于 NT4/2000/XP/2003.
:: 
:: 参数：%1 该变量用于接收启动的天数（引用调用）
::       %2 该变量用于接收启动的小时数（引用调用）
::       %3 该变量用于接收启动的分钟数（引用调用）
::       %4 该变量用于接收启动的秒钟数（引用调用）
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
setlocal ENABLEEXTENSIONS & set time=
for /f "tokens=1-3 delims=.-/ " %%a in ("%date%") do set yy=%%a&set mm=%%b&set dd=%%c
for /f "tokens=1-3 delims=:. " %%a in ("%time%") do set "hh=%%a" & set "nn=%%b" & set "ss=%%c"
set /a dd=100%dd%%%100,mm=100%mm%%%100
set /a z=14-mm,z/=12,y=yy+4800-z,m=mm+12*z-3,j=153*m+2
set /a j=j/5+dd+y*365+y/4-y/100+y/400-2472633
set hh=%hh: =0%
set /a hh=100%hh%%%100,nn=100%nn%%%100,f=j*1440+hh*60+nn
for /f "tokens=2-7 delims=/:M " %%a in ('net statistics work^|findstr /brc:"Statistics" /c:"统计"') do (
set yy=%%a&set mm=%%b&set dd=%%c&set hh=%%d&set nn=%%e%%f)
set /a dd=100%dd%%%100,mm=100%mm%%%100
set /a z=14-mm,z/=12,y=yy+4800-z,m=mm+12*z-3,j=153*m+2
set /a j=j/5+dd+y*365+y/4-y/100+y/400-2472633
if 1%hh% LSS 20 set hh=0%hh%
if {%nn:~2,1%} EQU {P} if "%hh%" NEQ "12" set hh=1%hh%&set/a hh-=88
if {%nn:~2,1%} EQU {A} if "%hh%" EQU "12" set hh=00
if {%nn:~2,1%} GEQ {A} set nn=%nn:~0,2%
set /a hh=100%hh%%%100,nn=100%nn%%%100,s=j*1440+hh*60+nn,n=f-s
set /a d=n/1440,n%%=1440,h=n/60,n%%=60
endlocal & set "%1=%d%" & set "%2=%h%" & set "%3=%n%" ^
  & (if "%4" NEQ "" set "%4=%ss%") & goto :EOF
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::  