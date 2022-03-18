:jia 加法函数（封装）by @随风 @bbs.bathome.net
::计算任意位数的正整数加法
::http://bbs.bathome.net/viewthread.php?tid=3372
setlocal enabledelayedexpansion&set f=&set "t="
set var1=%~1&set var2=%~2&set /a j=0,n1=0,n2=0
for /l %%a in (0 1 9) do (set vard1=&set "vard2="
set var1=!var1:%%a= %%a !&set var2=!var2:%%a= %%a !)
for %%a in (!var1!)do (set/a n1+=1&set vard1=%%a !vard1!)
for %%a in (!var2!)do (set/a n2+=1&set vard2=%%a !vard2!)
(if !n1! lss !n2! (set var1=%var2%&set "var2=%var1%"
set vard1=%vard2%&set vard2=%vard1%))&set "var2=!var2: =!"
for %%a in (!vard1!) do (if "!var2!"=="" set /a var2=0
set /a a=%%a+!var2:~-1!+j&set t=!a:~-1!!t!&set "a=0!a!"
set "j=!a:~-2,1!"&set var2=!var2:~0,-1!)
if !j! neq 0 set "t=!j!!t!"
Endlocal&set %~3=%t%&goto :EOF