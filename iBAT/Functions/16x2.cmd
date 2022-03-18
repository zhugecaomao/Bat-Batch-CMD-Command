::以4位一段，分别转换为二进制,不必考虑超大数问题
::http://bbs.bathome.net/viewthread.php?tid=3372
:16x2 十六进制 转 二进制  @随风 @bbs.bathome.net （封装）
@echo off&setlocal enabledelayedexpansion
set str=0123456789abcdef&set ok=&set "num=%~1"
for /l %%a in (0 1 15) do (set ".!str:~%%a,1!=%%a"
call set "num=%%num:!str:~%%a,1!= !str:~%%a,1!%%")
for %%i in (!num!) do (set /a x=0,n=!.%%i!
for %%a in (8 4 2 1) do (set /a x+=%%a
if !n! geq !x! (set ok=!ok!1) else (
set ok=!ok!0&set /a x-=%%a)))
endlocal&set %~2=%ok%&goto :EOF