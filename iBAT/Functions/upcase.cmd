::Сдת��д��upcase
::call upcase retvar str
::      %1 ָ��Ҫ������ַ���
::      %2 ָ�����ڱ��淵��ֵ�ı�����
setlocal enabledelayedexpansion&set $=&set "#=@%~1"
for %%a in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)do set #=!#:%%a=%%a!
endlocal&set "%~2=%#:~1%"&exit/b