@echo off&SETLOCAL ENABLEDELAYEDEXPANSION
title 文件夹加密 (c) 诸葛草帽 http://zhugecaomao.jimdo.com
color fc
mode con cols=40 lines=5
@echo 更多精品软件请访问：诸葛草帽电脑工作室
@echo.
@echo   ===http://zhugecaomao.jimdo.com===
set abc=%~nx0
set "da=%cd%"
for %%i in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
        set ii=%%i
        if "!ii!:\" equ "!da!" echo.&echo.本程序只对文件夹下有效&pause>nul&exit
)
if not exist "%da%\DirRecycler\desktop.ini" (goto 加密) else goto 解密
:加密
echo.
set /p key=请输入新的密码:
md "%da%\DirRecycler" 1>nul 2>nul
md "%da%\DirRecycler\system..\" 1>nul 2>nul
echo.[.ShellClassInfo]>>"%da%\DirRecycler\desktop.ini"
echo.CLSID={645FF040-5081-101B-9F08-00AA002F954E}>>"%da%\DirRecycler\desktop.ini"
echo.%key%>"%da%\DirRecycler\system~1\key"
attrib DirRecycler +a +r +s +h
for %%i in (*.*) do (
        move "%%i" "%da%\DirRecycler\system~1\" 1>nul 2>nul
        move "%da%\DirRecycler\system~1\%abc%" "%da%" 1>nul 2>nul
)
for /f "delims=" %%i in ('dir /a:d /b') do (
        move "%%i" "%da%\DirRecycler\system~1\" 1>nul 2>nul
)
exit
:解密
copy "%da%\DirRecycler\system~1\key" "%temp%" 1>nul 2>nul
for /f "delims=" %%i in ('type "%temp%\key"') do set zq=%%i
del /f /q "%temp%\key" 1>nul 2>nul
set qi=4
:错误
cls
set /a qi-=1
if %qi% leq 0 exit
echo.剩除输入次数:%qi%
echo.
set "key1="
set /p key1=请输入正确密码:
if "%key1%" equ "%zq%" (goto 正确) else goto 错误
:正确
del /f /q "%da%\DirRecycler\system~1\key"
for %%i in ("%da%\DirRecycler\system~1\*.*") do (
        move "%%i" "%da%\" 1>nul 2>nul
)
for /f "delims=" %%i in ('dir "%da%\DirRecycler\system~1\" /a:d /b') do (
        move "%da%\DirRecycler\system~1\%%i" "%da%\" 1>nul 2>nul

)
rd /s /q "%da%\DirRecycler" 1>nul 2>nul
start http://zhugecaomao.jimdo.com
exit
