@echo off
title 诸葛草帽
color cf
@ echo.
@ echo.
@echo 诸葛草帽专用！别人勿动！
@ echo.
@ echo.
@ echo http://zhugecaomao.jimdo.com
@ echo.
@ echo.
set /p choice=[诸葛草帽!  请选择加密还是解密？]
if /i "%choice%"=="+" goto :yes
if /i "%choice%"=="-" goto :no
exit

:yes
echo 你选择了加密
attrib +s +h e:\1
start http://zhugecaomao.jimdo.com
exit

:no
echo 你选择了解密
attrib -s -h e:\1
start http://zhugecaomao.jimdo.com
exit