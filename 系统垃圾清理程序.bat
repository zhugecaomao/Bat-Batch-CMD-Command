mode con cols=40 lines=20
title ����ñϵͳ�����������
@echo off
color f9
:main
cls
echo.
echo.
echo.
echo ����ñϵͳ�����������
echo.
echo.
echo ���������ʼ����ϵͳ����
echo.
echo.
pause
del /f /s /q %systemdrive%\*.tmp 
del /f /s /q %systemdrive%\*._mp 
del /f /s /q %systemdrive%\*.log 
del /f /s /q %systemdrive%\*.gid 
del /f /s /q %systemdrive%\*.chk 
del /f /s /q %systemdrive%\*.old 
del /f /s /q %systemdrive%\recycled\*.* 
del /f /s /q %windir%\*.bak
del /f /s /q %windir%\prefetch\*.* 
rd /s /q %windir%\temp & md %windir%\temp 
del /f /q %userprofile%\COOKIES s\*.* 
del /f /q %userprofile%\recent\*.* 
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*" 
del /f /s /q "%userprofile%\Local Settings\Temp\*.*" 
del /f /s /q "%userprofile%\recent\*.*" 
sfc /purgecache '����ϵͳ�������ļ� 
defrag %systemdrive% -b '�Ż�Ԥ����Ϣ 
echo ���ϵͳLJ��ɣ� 
echo. & pause