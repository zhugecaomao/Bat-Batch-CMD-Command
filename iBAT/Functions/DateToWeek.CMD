::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
:DateToWeek %yy% %mm% %dd% yn cw dw
::
:: 作者：Ritchie Lawrence, Updated 2002-11-20. 版本 1.1
::
:: 功能：通过日历日期获取 ISO 8601 星期日期。
::       适用于 NT4/2000/XP/2003.
:: 
:: 参数：%1 待转换的年，两位或者四位（传值调用）
::       %2 待转换的月，可以以零开头（传值调用）
::       %3 待转换的日，可以以零开头（传值调用）
::       %4 该变量用于接收年份，四位（引用调用）
::       %5 该变量用于接收日历星期，两位，01 到 53（引用调用）
::       %6 该变量用于接收星期的第几天，一位，1 到 7（引用调用）
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
setlocal ENABLEEXTENSIONS
set yy=%1&set mm=%2&set dd=%3
if 1%yy% LSS 200 if 1%yy% LSS 170 (set yy=20%yy%) else (set yy=19%yy%)
set /a dd=100%dd%%%100,mm=100%mm%%%100
set /a z=14-mm,z/=12,y=yy+4800-z,m=mm+12*z-3,Jd=153*m+2
set /a Jd=Jd/5+dd+y*365+y/4-y/100+y/400-32045
set /a y=yy+4798,Jp=y*365+y/4-y/100+y/400-31738,t=Jp+3,Jp=t-t%%7
set /a y=yy+4799,Jt=y*365+y/4-y/100+y/400-31738,t=Jt+3,Jt=t-t%%7
set /a y=yy+4800,Jn=y*365+y/4-y/100+y/400-31738,t=Jn+3,Jn=t-t%%7
set /a Jr=%Jp%,yn=yy-1,yn+=Jd/Jt,yn+=Jd/Jn
if %Jd% GEQ %Jn% (set /a Jr=%Jn%) else (if %Jd% GEQ %Jt% set /a Jr=%Jt%)
set /a diff=Jd-Jr,cw=diff/7+1,wd=diff%%7,wd+=1
if %cw% LSS 10 set cw=0%cw%
endlocal&set %4=%yn%&set %5=%cw%&set %6=%wd%&goto :EOF
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::  