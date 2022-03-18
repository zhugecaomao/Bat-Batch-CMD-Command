:Clean Lines CleanCols
::用法：
::    call :Clean Lines CleanCols
::          %1  Lines      要回退的行数
::          %2  CleanCols  要清空的行宽，默认=8
::                         有效值为 8~窗口宽度

@echo off&setlocal enabledelayedexpansion&set k=&set clean=
if "	" lss "' " echo 函数中的 Tab 制表符失效&exit/b1
for /l %%a in (1 1 11)do set "k=!k!"
(for /l %%b in (1 1 %~2)do set clean= !clean!
for /l %%a in (1 1 %~1)do (if %~2@ neq @ echo 	!k! !clean!)&echo 	!k!)2>nul
if /i %0==:clean exit/b0