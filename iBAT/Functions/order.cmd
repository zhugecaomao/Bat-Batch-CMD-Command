::::::::::::::::::::::::::::::::排序:::::::::::::::::::::::::::::::::
:: call :order [/q] [/r] [/l] String1/File1 String2/File2 ... StringN/FileN  ::
::                                                                 ::
::    最大兼容模式（默认）：                                       ::
::      [最大兼容模式，默认模式，兼容所有字符，但效率较低，单条参] ::
::      [数长度上限为1023 个字符。                               ] ::
::        将输入依次从左至右逐字符比较，不区分宽字符，若将宽字符   ::
::        算作两个字符，请在调用本函数前使用 chcp 437。当存在与    ::
::        第当存在与除开关之外的第一个参数的同名文件时认为所有参   ::
::        数均为文件名，否则将把所有参数作为字符串排序输出。       ::
::                                                                 ::
::    缓冲区输入模式：                                             ::
::      [缓冲区输入模式，任何模式下，当除开关外的参数为空时作为当] ::
::      [前模式的子模式自动启用，其余特性与父模式基本相同。      ] ::
::        当参数为空时，则认为输入自管道或重定向，将取当前缓冲区   ::
::        里所有内容用于排序，缓冲区输入模式会增加耗时。           ::
::        注意，如果参数为空，而缓冲区又无任何输入，脚本会卡住。   ::
::                                                                 ::
:: /q 快速排序模式：                                               ::
::      [快速排序模式是一个简化的模式，由 /q 开关启用，参数如果含] ::
::      [有!、=、/或\将得出错误结果，若含有?、*将对文件名进行通配] ::
::      [匹配，单条参数长度上限 127 字节，不支持对文件排序。     ] ::
::        将输入的命令行参数按右对齐的字符顺序输出，不区分宽字符。 ::
::        /q 开关与其他任何模式并用时，将增加排序的耗时。          ::
::                                                                 ::
:: /r 逆序输出模式                                                 ::
::      [逆序输出模式：任何情况下由 /r 开关启用，将原结果逆序输出] ::
::        可与以上任何模式组合。                                   ::
::                                                                 ::
:: /l 左对齐模式                                                   ::
::      [左对齐模式：任何情况下由 /l 开关启用，将从左至右逐字比较] ::
::        可与以上任何模式组合，本函数默认右对齐排序，若用 /l 开   ::
::        关设置为左对齐，可大幅提升排序的效率。                   ::
::                                                                 ::
::                                                                 ::
:: 各组合的效率参考   ================= 特性说明 ================= ::
::                        order 函数中除了最大兼容模式和快速排序模 ::
:: /q    /l 参数      式因为算法思想不同而相斥，其余三个模式均可与 ::
::       /q 参数      此二者之一自由地排列组合。                   ::
:: /q /r    无参数        由于系统自带的 sort 命令是左对齐排序，所 ::
:: /q       无参数    以本函数默认为右对齐排序，可使用 /l 开关切换 ::
::    /r /l 无参数    为左对齐，并且能够提升效率。                 ::
::    /r /l 参数          缓冲区输入模式会降低效率，但可接受来自缓 ::
::       /l 参数      冲区的输出（即重定向输入或管道输入）。       ::
::       /l 无参数        逆序模式将结果逆序输出，会降低执行效率， ::
::    /r    无参数    但有个例外：假如同时使用了左对齐模式且不在快 ::
::    /r    参数      速排序模式下时会采用优化算法，兼容性最佳（支 ::
::                    持 65535 字符的行、支持 unicode 编码向 gbk， ::
:: 效率从高到低排列   的单向转换）且排序的效率将大幅提升。         ::
:: 个人推断仅供参考                                                ::
::                       批处理之家 http://bbs.bathome.net   Crlf  ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:order [/q] [/r] [/l] String1/File1 String2/File2 ... StringN/FileN
@echo off&setlocal enabledelayedexpansion&set q=&set l=/a&set r=&set @=&set n=%%a#
for %%a in (%*)do if /i %%a==/q (set q=2)else if /i %%a==/r (
set "r=&sort /+1024 /o $ $")else if /i %%a==/l (set l=)else set @=!@! %%a
if !@!.==. set "n=/f "tokens=1*delims=:" %%a#'findstr /n .*^|findstr /n .'"
if !r:~0!!q!!l!==!r! (if !@!.==. (sort /+65535 /rec 65535
)else cmd/c"type %%@%%" 2>nul|sort /+65535 /rec 65535)&exit/b
(cd.>$||taskkill /f /t /im findstr.exe /im sort.exe /im .>nul) 2>nul||cd.>$||exit/b1)
if exist %1 set "n=/f "tokens=1*delims=:" %%a#'findstr .* !@! nul'"
(if !r:~0!!q!==!r! set r=/r)&if !l!==/a for /l %%a in (9 -1 %q%)do set str=!str!!str!/
if defined q (if !@!. neq . (for %%a in (!@:/q^=!)do set "@=%str%%%~a"&set "\!@:~-127!.=#"
)else for /f "eol=\delims=" %%a in ('more')do set "@=%str%%%~a"&set "\!@:~-127!.=#"
set \>$ 2>&1 %r%&endlocal&for /f "delims=" %%a in ($)do echo %%~na)else (
endlocal&setlocal disabledelayedexpansion&(for %n:#= in (%)do (
set%l% "n=n+100001"&set "str=%%b"&setlocal enabledelayedexpansion
set str=%str%:!str:*:=!&echo !n:~-5!!str:~-1024!&endlocal))>$ 2>&1
sort /rec 1029 /+6 /o $ $ %r%&&for /f "delims=" %%a in ($)do (
set str=%%a&setlocal enabledelayedexpansion&echo;!str:*:=!&endlocal))
del $>nul&if /i %0==:order  exit/b0
