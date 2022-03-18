:::::::::::::::::::::::::::::::::::::
::浮点加法 call _ADD  <被加数> <加数> [返回变量]
:_ADD [var]   //made by netbenton on 2009.10.09
::
::分别支持十进制的64位整数和小数,一次计算仅用0.01秒
::http://bbs.bathome.net/redirect.php?goto=findpost&ptid=3372&pid=38997&fromuid=30406
:::::::::::::::::::::::::::::::::::::
(setlocal enabledelayedexpansion
set L=&for /l %%a in (1,1,8) do set L=!L!00000000
for /f "tokens=1-3 delims=." %%a in ("!L!%1.!L!") do set at=%%a&set aw=%%b%%c
for /f "tokens=1-3 delims=." %%a in ("!L!%2.!L!") do set bt=%%a&set bw=%%b%%c
set a=!at:~-64!!aw:~,64!
set b=!bt:~-64!!bw:~,64!
set e=
set v=200000000
for /l %%a in (8,8,128)do set/a v=1!b:~-%%a,8!+1!a:~-%%a,8!+!v:~-9,-8!-2&set e=!v:~-8!!e!
set e=!e:0= !
for /f "tokens=*" %%a in ("!e:~,-64!.!e:~64!") do set e=%%~nxa
for %%a in ("!e: =0!") do endlocal&(if %3.==. (echo %%~a) else set %3=%%~a)
exit/b)