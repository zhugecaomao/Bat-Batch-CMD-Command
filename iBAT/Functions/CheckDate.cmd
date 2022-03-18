:ChechDate Date(YYYYMMDD)
::检查日期是否合法，合法时将改变 errorlevel 变量的值为 0，非法时为 1，参数格式错误时不作改变
setlocal disabledelayedexpansion
set/a"1/((date=%~1)/10000)" 2>nul||echo call :ChechDate Date(YYYYMMDD)&&exit/b
set/a"b=1,y=%date:~,-4%,m=1%date:~-4,2%-100,d=1%date:~-2%-100,test=!(y%%4|!(y%%100)*!!(y%%400))*!(m^2)+(m+m/8)%%2-2*!(m^2)+30,b=0/(test/d*!(m/13))" 2>nul&&echo Right||echo Wrong
exit/b%b%