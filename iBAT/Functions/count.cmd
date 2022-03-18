:::::::::::::::::::::::::统计关键词出现次数::::::::::::::::::::::::::::::::
:: call :Count  [retvar=][/c: | /g:]Keys  [:: | /f:]Str/File  [retvar]   ::
::                                                                       ::
::       %1    "Key1..KeyN"       需要计数的关键词（不分大小写），关键词 ::
::                            不能含有 * ~ = !，多个关键词以空格间隔，空 ::
::                            格可用 \ 号转义。                          ::
::                   /c:Key       使用指定字符串作为文字搜索字符串，等于 ::
::                            将所有空格转义，将 %1 作为一条关键词看待。 ::
::                  /g:File       如果启用 /g 开关，则从指定的文件获得搜 ::
::                            索字符串，但仅能指定一个目标文件。         ::
::                 retvar=%1      特殊用法，将 retvar= 写在 %1 之前时，  ::
::                            会将计数的结果赋给指定变量，此处指定的变量 ::
::                            名优先于 % 3中设定的变量名，不会与 %1 的其 ::
::                            它语法相冲突。                             ::
::       %2        Str/File       指定需要计算关键词数量的字符串或文指定 ::
::                            件名，兼容通配文件名和相对路径。           ::
::                    ::Str      当以 :: 为前缀时将指定此项为字符串，否  ::
::                            则自行判断是否为文件，为首的 :: 生效后将被 ::
::                            去除，不会干扰计数。                       ::
::                  /f:File      如果启用 /f 开关，将认为此项代表从指定  ::
::                            的文件获取文件列表。                       ::
::       %3          retvar       设定一个变量名，用于保存计数的变量，如 ::
::                            不设置则直接输出结果。                     ::
::                                                                       ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                                                                       ::
::           函数算法基于变量替换，所以无法对包含 * ~ = ! 的关键词进行   ::
::  函   计数。另外，因为每次替换时都将关键词替换为两个字符宽度，所以当  ::
::       行字符数+(行中出现关键词的总长度-出现关键词的次数*2)>8189 时将  ::
::  数   出错。                                                          ::
::           /g 和 /f 开关都不支持通配文件名，所以使用它们时请指定一个   ::
::  说   确凿有效的文件名。                                              ::
::           部分语法模仿 findstr，以助理解，但仅仅是相似。除可用 \ 转   ::
::  明   义空格之外未提供正则支持。                                      ::
::                                     批处理之家 bbs.bathome.net  Crlf  ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:Count  [retvar=][/c: | /g:]Keys  [:: | /f:]Str/File  [retvar]
setlocal disabledelayedexpansion&set ret=%3&set c=&set ff=&set cf=.&set s=%*
for /f "delims==" %%a in ("%s:"=%")do if %%a==%1 set ret=%1&shift
set s=/?&set "g=%~1"&set "f=%~2"&setlocal enabledelayedexpansion&set gf="
for %%a in (g c) do if !cf!==. if /i !g:~^,3!==/%%a: set g=!g:~3!&set cf=&set %%af=
for /f "tokens=2delims=*~=^!" %%a in (%gf%!g!%gf%)do echo 关键词不能含有 * ~ = ^!&exit/b1
if %~d2==:: (set f=!f:~2!)else set s=&if /i !f:~^,3!==/f: set f=!f:~3!&set ff=/f "usebackeol=:delims="
if "!g:~,1!!g:~-1!"=="""" set g=!g:~1,-1!
dir !s! /a-d "!f!">nul 2>nul&&(set s=useback)||set s=&&set ff=/f "delims="&set c=^


for %%a in ("!c!")do (for %%b in (g f)do if !%%b!.==. echo call :Count Key String/File&exit/b1
if !cf!==. set g=!g:\ =\~!&set g=!g: =%%~a!&set g=!g:\~= !
(for %%b in (cf gf ff)do set %%b=)&setlocal disabledelayedexpansion
for %ff% %%b in ("%f:"=%")do for /f "%s%eol=麤delims=" %%c in ("%%~b")do (echo %%c>>tmp.txt
set s=%%c&setlocal enabledelayedexpansion
for /f "eol==delims=" %%d in (%gf%!g!%gf%)do set "s=[!s:%%d=%%~a]!"
(for /f eol^=麤 %%d in ("!s!")do set/ac+=1)&for /f %%d in ("!c!")do endlocal&set/ac=%%d-1))
endlocal&endlocal&endlocal&2>nul set %ret%=%c%||echo;%c%&if /i %0==:count exit/b0