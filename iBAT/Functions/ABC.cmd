::��Сд��ĸת����ABC
::call ABC Function retvar str
::      %1 ָ��һ����������ѡ�ĺ������£�
::             upcase    Сдת��д����
::             downcase  ��дתСд����
::             strlwr    ��Сд��ת����
::      %2 ָ��Ҫ������ַ���
::      %3 ָ�����ڱ��淵��ֵ�ı�����

setlocal enabledelayedexpansion&set $=&set "@=@%~2"
if /i "%~1"=="upcase" set $=A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
if /i "%~1"=="downcase" set $=a b c d e f g h i j k l m n o p q r s t u v w x y z
if defined $ for %%a in (%$%)do set @=!@:%%a=%%a!
if defined $ endlocal&set "%~3=%@:~1%"&exit/b
for %%a in (a b c d e f g h i j k l m n o p q r s t u v w x y z)do set %%a=%%a
for /l %%a in (0 1 8189)do (
if !@:~%%a^,1!.==. for /f "delims=" %%b in (""!$!"")do endlocal&set "%~2=%%~b"&exit/b
set $=!$!!@:~%%a,1!&if !@:~%%a^,1! leq Z if !@:~%%a^,1! geq a (
for /f %%b in ("!@:~%%a,1!:")do if %%b neq %%~db (set #=%%~db)else set #=!%%b~0!
set $=!$:~,-1!!#:~,1!))