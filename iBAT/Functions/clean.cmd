:Clean Lines CleanCols
::�÷���
::    call :Clean Lines CleanCols
::          %1  Lines      Ҫ���˵�����
::          %2  CleanCols  Ҫ��յ��п�Ĭ��=8
::                         ��ЧֵΪ 8~���ڿ��

@echo off&setlocal enabledelayedexpansion&set k=&set clean=
if "	" lss "' " echo �����е� Tab �Ʊ��ʧЧ&exit/b1
for /l %%a in (1 1 11)do set "k=!k!"
(for /l %%b in (1 1 %~2)do set clean= !clean!
for /l %%a in (1 1 %~1)do (if %~2@ neq @ echo 	!k! !clean!)&echo 	!k!)2>nul
if /i %0==:clean exit/b0