::��Сд��ת��strlwr
::call strlwr retvar str
::      %1 ָ��Ҫ������ַ���
::      %2 ָ�����ڱ��淵��ֵ�ı�����
setlocal enabledelayedexpansion&set $=&set "@=@%~1"
for %%a in (a b c d e f g h i j k l m n o p q r s t u v w x y z)do set %%a=%%a
for /l %%a in (1 1 8189)do (
if !@:~%%a^,1!.==. for /f "delims=" %%b in (""!$!"")do endlocal&set "%~2=%%~b"&exit/b
set $=!$!!@:~%%a,1!&if !@:~%%a^,1! leq Z if !@:~%%a^,1! geq a (
for /f %%b in ("!@:~%%a,1!:")do if %%b neq %%~db (set #=%%~db)else set #=!%%b~0!
set $=!$:~,-1!!#:~,1!))