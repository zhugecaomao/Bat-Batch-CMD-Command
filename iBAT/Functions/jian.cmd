:jian 减法函数（封装）by @随风 @bbs.bathome.net
::计算1000位以内的正整数减法
::http://bbs.bathome.net/viewthread.php?tid=3372
setlocal enabledelayedexpansion&&set t=&set f=&set "lin="
for /l %%a in (1 1 10) do set "lin=0000000000!lin!"
set lin=!lin!!lin!!lin!!lin!!lin!&set "lin=!lin!!lin!"
set var1=!lin!%~1&set var2=!lin!%~2&set vard1=&set/a j=0
set var1=!var1:~-1000!&set "var2=!var2:~-1000!"
if "!var1!" lss "!var2!" (set var1=%~2&set "var2=%~1"
set "f=-") else set var1=%~1&set "var2=%~2"
for /l %%a in (0 1 9) do set "var1=!var1:%%a= %%a !"
for %%a in (!var1!) do set "vard1=%%a !vard1!"
for %%a in (!vard1!) do (if "!var2!"=="" set/a var2=0
set /a a=%%a-j,b=!var2:~-1!
if !a! lss !b! (set /a a+=10,j=1)else set /a j=0
set /a w=a-b&set t=!w!!t!&set var2=!var2:~0,-1!)
for /f "tokens=* delims=0" %%a in ("!t!") do (
if "%%a"=="" (set t=0) else set "t=%%a")
Endlocal&set %~3=%f%%t%&goto :EOF