@echo off
color 0b
mode con: cols=70 lines=22
title ����ñ ���� Wi-Fi �ȵ�(��������) �������ù���
@echo.
@echo       Windows 7 ���� Wi-Fi �ȵ㿪�����ù���   By ����ñ
@echo.
:start
@echo ______________________________________________________________________
@echo ����һ���µ���������[N]      ����������������[S]      �ر���������[C]
@echo.
@echo �鿴��ǰ��������״̬[V]      ���������ô���[T]      ж����������[U]
@echo.
@echo �鿴�����������ð���[H]      ����������״̬[Z]      �����������˳�
@echo ______________________________________________________________________
set /p choice=���������ѡ��
if /i "%choice%"=="n" goto :n
if /i "%choice%"=="s" goto :s
if /i "%choice%"=="c" goto :c
if /i "%choice%"=="v" goto :v
if /i "%choice%"=="z" goto :z
if /i "%choice%"=="t" goto :t
if /i "%choice%"=="u" goto :u
if /i "%choice%"=="h" goto :h
exit

:n
@echo.
echo ��ѡ�����½���������
@echo.
set /p ssid= �������û���
@echo.
set /p key=  ����������
@echo.
netsh wlan set hostednetwork mode=allow ssid=%ssid% key=%key%
@echo.
@echo ������������֮����鿴���½̳̣��Թ���������
start help.doc
@echo.
@echo ����������������ô���
@echo.
pause
start Ncpa.cpl
goto start

:s
echo ��ѡ����������������
netsh wlan start hostednetwork
goto start

:c
echo ��ѡ���˹ر���������
netsh wlan stop hostednetwork
goto start

:v
echo ��ѡ���˲鿴��������
netsh wlan show hostednetwork
goto start

:z
start http://zhugecaomao.jimdo.com
exit

:t
start Ncpa.cpl
goto start

:u
netsh wlan set hostednetwork mode=disallow
goto start

:h
start help.doc
goto start