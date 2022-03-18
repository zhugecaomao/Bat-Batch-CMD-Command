:cheng 乘法函数（封装）by @随风 @bbs.bathome.net
::计算任意位数的正整数乘法
::http://bbs.bathome.net/viewthread.php?tid=3372
setlocal enabledelayedexpansion
if "%~1"=="0" Endlocal&set %~3=0&goto :EOF
if "%~2"=="0" Endlocal&set %~3=0&goto :EOF
set f=&set jia=&set ji=&set /a n1=0,n2=0
set vard1=&set "vard2="&set var1=%~1&set "var2=%~2"
for /l %%a in (0 1 9) do (
set var1=!var1:%%a= %%a !&set var2=!var2:%%a= %%a !)
for %%a in (!var1!)do (set /a n1+=1&set vard1=%%a !vard1!)
for %%a in (!var2!)do (set /a n2+=1&set vard2=%%a !vard2!)
if !n1! gtr !n2! (set vard1=%vard2%&set vard2=%vard1%)
for %%a in (!vard1!) do (set "t="&set /a j=0
for %%b in (!vard2!) do (if "!jia!"=="" set /a jia=0
set /a a=%%a*%%b+j+!jia:~-1!&set "t=!a:~-1!!t!"
set a=0!a!&set "j=!a:~-2,1!"&set jia=!jia:~0,-1!)
set "ji=!t:~-1!!ji!"
if "!j:~0,1!"=="0" (set ss=) else set "ss=!j:~0,1!"
set jia=!ss!!t:~0,-1!)
if not "!j:~0,1!"=="0" set "t=!j:~0,1!!t!"
set "ji=!t!!ji:~1!"
Endlocal&set %~3=%ji%&goto :EOF