@echo off&SETLOCAL ENABLEDELAYEDEXPANSION
title �ļ��м��� (c) ����ñ http://zhugecaomao.jimdo.com
color fc
mode con cols=40 lines=5
@echo ���ྫƷ�������ʣ�����ñ���Թ�����
@echo.
@echo   ===http://zhugecaomao.jimdo.com===
set abc=%~nx0
set "da=%cd%"
for %%i in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
        set ii=%%i
        if "!ii!:\" equ "!da!" echo.&echo.������ֻ���ļ�������Ч&pause>nul&exit
)
if not exist "%da%\DirRecycler\desktop.ini" (goto ����) else goto ����
:����
echo.
set /p key=�������µ�����:
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
:����
copy "%da%\DirRecycler\system~1\key" "%temp%" 1>nul 2>nul
for /f "delims=" %%i in ('type "%temp%\key"') do set zq=%%i
del /f /q "%temp%\key" 1>nul 2>nul
set qi=4
:����
cls
set /a qi-=1
if %qi% leq 0 exit
echo.ʣ���������:%qi%
echo.
set "key1="
set /p key1=��������ȷ����:
if "%key1%" equ "%zq%" (goto ��ȷ) else goto ����
:��ȷ
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
