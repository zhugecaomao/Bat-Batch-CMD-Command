::小写转大写：upcase
::call upcase retvar str
::      %1 指定要处理的字符串
::      %2 指定用于保存返回值的变量名
setlocal enabledelayedexpansion&set $=&set "#=@%~1"
for %%a in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)do set #=!#:%%a=%%a!
endlocal&set "%~2=%#:~1%"&exit/b