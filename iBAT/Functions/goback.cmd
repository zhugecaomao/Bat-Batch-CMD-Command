:Goback Lines
::�÷���
::    call :Goback Lines
::          %1 Lines       Ҫ���˵�����
::
::               http:\\bbs.bathome.net

@setlocal enabledelayedexpansion&set k=
@if "	" lss "' " echo �����е� Tab �Ʊ��ʧЧ&endlocal&exit/b1
@for /l %%a in (0 2 %10) do @set "k=!k!"
2>nul @echo 	%k%&set /p=<nul&if /i %0==:goback exit/b0