::��дתСд��downcase
::call downcase retvar str
::      %1 ָ��Ҫ������ַ���
::      %2 ָ�����ڱ��淵��ֵ�ı�����
setlocal enabledelayedexpansion&set $=&set "#=@%~1"
for %%a in (a b c d e f g h i j k l m n o p q r s t u v w x y z)do set #=!#:%%a=%%a!
endlocal&set "%~2=%#:~1%"&exit/b