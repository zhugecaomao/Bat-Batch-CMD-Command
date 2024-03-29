:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: 说明： call :getasc  需要开启变量延迟后调用                           ::
::        %1 -- 扩展ASCII码表的变量名前缀,建议将@#$._[]{}之一作为前缀    ::
::              ASCII码值的变量名以“16进制”递增从00~ff                 ::
::        %2 -- ASCII码0x00 存放的文件名                                 ::
::              若%2非空，则创建含一个0x00字符的文件，%2为文件名         ::
:: 函数依赖： 外部命令fsutil(%2非空时调用), chcp 各被调用一次            ::
::            unicode编码的文件 %windir%\system32\noise.chs              ::
:: 函数调用结束后，代码页被切换在437下。                                 ::
:: 使用ASCII码128~254时,需要再英文(437)代码页下进行                      ::
:: 适用系统: windows xp (win7未测试)                                     ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:getasc <@|#|$|.|_|[|]|{|}> [0x00 filename] // Ver 1.0 ;by plp626 
(if %2. neq . >nul fsutil file createnew %2 1)&if ⒉ geq 3 chcp 936>nul
(ECHO Set %102=^^&echo/)>$~{}_@.bat&call $~{}_@.bat&del $~{}_@.bat
Set %101=〇&Set %103=♂&Set %104=♀&Set %106=→&chcp 437>nul
for /f %%a in ('copy/z %~s0 nul')do Set %105=%%a
set %1=0!%101!!%102!!%103!!%104!!%105!!%106! ^^!"#$%%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^^_`abcdefghijklmnopqrstuvwxyz{|}~█亗儎厗噲墛媽崕彁憭摂晼棙櫄洔潪煚、￥ウЖ┆辈炒刀犯购患骄坷谅媚牌侨墒颂臀闲岩釉罩棕仝圮蒉哙徕沅彐玷殛腱眍镳耱篝貊鼬%
Set %1FF=0 1 2 3 4 5 6 7 8 9 A B C D E F
for %%a in (!%1ff!)do for %%b in (!%1FF!)do Set %1%%a%%b=!%1:~0x%%a%%b,1!
Set %17F=&set/p%1FF=<%windir%\system32\noise.chs&Set %1FF=!%1FF:~,1!&goto:eof