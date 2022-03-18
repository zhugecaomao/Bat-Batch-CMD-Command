::大写转小写：downcase
::call downcase retvar str
::      %1 指定要处理的字符串
::      %2 指定用于保存返回值的变量名
setlocal enabledelayedexpansion&set $=&set "#=@%~1"
for %%a in (a b c d e f g h i j k l m n o p q r s t u v w x y z)do set #=!#:%%a=%%a!
endlocal&set "%~2=%#:~1%"&exit/b