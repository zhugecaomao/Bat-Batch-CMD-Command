:Goback Lines
::用法：
::    call :Goback Lines
::          %1 Lines       要回退的行数
::
::               http:\\bbs.bathome.net

@setlocal enabledelayedexpansion&set k=
@if "	" lss "' " echo 函数中的 Tab 制表符失效&endlocal&exit/b1
@for /l %%a in (0 2 %10) do @set "k=!k!"
2>nul @echo 	%k%&set /p=<nul&if /i %0==:goback exit/b0