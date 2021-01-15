@echo off
color 0b
mode con: cols=70 lines=22
title 诸葛草帽 虚拟 Wi-Fi 热点(无线网络) 开启设置工具
@echo.
@echo       Windows 7 虚拟 Wi-Fi 热点开启设置工具   By 诸葛草帽
@echo.
:start
@echo ______________________________________________________________________
@echo 创建一个新的无线网络[N]      启动已有无线网络[S]      关闭无线网络[C]
@echo.
@echo 查看当前无线网络状态[V]      打开网络配置窗口[T]      卸载无线网络[U]
@echo.
@echo 查看无线网络设置帮助[H]      检查软件更新状态[Z]      输入其他键退出
@echo ______________________________________________________________________
set /p choice=请输入你的选择？
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
echo 你选择了新建无线网络
@echo.
set /p ssid= 请输入用户名
@echo.
set /p key=  请输入密码
@echo.
netsh wlan set hostednetwork mode=allow ssid=%ssid% key=%key%
@echo.
@echo 开启无线网络之后请查看以下教程，以共享本地网络
start help.doc
@echo.
@echo 按任意键打开网络配置窗口
@echo.
pause
start Ncpa.cpl
goto start

:s
echo 你选择了启用无线网络
netsh wlan start hostednetwork
goto start

:c
echo 你选择了关闭无线网络
netsh wlan stop hostednetwork
goto start

:v
echo 你选择了查看无线网络
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