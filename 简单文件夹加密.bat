@echo off
title ����ñ
color cf
@ echo.
@ echo.
@echo ����ñר�ã������𶯣�
@ echo.
@ echo.
@ echo http://zhugecaomao.jimdo.com
@ echo.
@ echo.
set /p choice=[����ñ!  ��ѡ����ܻ��ǽ��ܣ�]
if /i "%choice%"=="+" goto :yes
if /i "%choice%"=="-" goto :no
exit

:yes
echo ��ѡ���˼���
attrib +s +h e:\1
start http://zhugecaomao.jimdo.com
exit

:no
echo ��ѡ���˽���
attrib -s -h e:\1
start http://zhugecaomao.jimdo.com
exit