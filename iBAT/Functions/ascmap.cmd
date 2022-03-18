:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: ËµÃ÷£º call :getasc  ÐèÒª¿ªÆô±äÁ¿ÑÓ³Ùºóµ÷ÓÃ                           ::
::        %1 -- À©Õ¹ASCIIÂë±íµÄ±äÁ¿ÃûÇ°×º,½¨Òé½«@#$._[]{}Ö®Ò»×÷ÎªÇ°×º    ::
::              ASCIIÂëÖµµÄ±äÁ¿ÃûÒÔ¡°16½øÖÆ¡±µÝÔö´Ó00~ff                 ::
::        %2 -- ASCIIÂë0x00 ´æ·ÅµÄÎÄ¼þÃû                                 ::
::              Èô%2·Ç¿Õ£¬Ôò´´½¨º¬Ò»¸ö0x00×Ö·ûµÄÎÄ¼þ£¬%2ÎªÎÄ¼þÃû         ::
:: º¯ÊýÒÀÀµ£º Íâ²¿ÃüÁîfsutil(%2·Ç¿ÕÊ±µ÷ÓÃ), chcp ¸÷±»µ÷ÓÃÒ»´Î            ::
::            unicode±àÂëµÄÎÄ¼þ %windir%\system32\noise.chs              ::
:: º¯Êýµ÷ÓÃ½áÊøºó£¬´úÂëÒ³±»ÇÐ»»ÔÚ437ÏÂ¡£                                 ::
:: Ê¹ÓÃASCIIÂë128~254Ê±,ÐèÒªÔÙÓ¢ÎÄ(437)´úÂëÒ³ÏÂ½øÐÐ                      ::
:: ÊÊÓÃÏµÍ³: windows xp (win7Î´²âÊÔ)                                     ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:getasc <@|#|$|.|_|[|]|{|}> [0x00 filename] // Ver 1.0 ;by plp626 
(if %2. neq . >nul fsutil file createnew %2 1)&if ¢² geq 3 chcp 936>nul
(ECHO Set %102=^^&echo/)>$~{}_@.bat&call $~{}_@.bat&del $~{}_@.bat
Set %101=©–&Set %103=¡á&Set %104=¡â&Set %106=¡ú&chcp 437>nul
for /f %%a in ('copy/z %~s0 nul')do Set %105=%%a
set %1=0!%101!!%102!!%103!!%104!!%105!!%106! ^^!"#$%%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^^_`abcdefghijklmnopqrstuvwxyz{|}~¨€‚ƒ„…†‡ˆ‰Š‹ŒŽ‘’“”•–—˜™š›œžŸ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþ%
Set %1FF=0 1 2 3 4 5 6 7 8 9 A B C D E F
for %%a in (!%1ff!)do for %%b in (!%1FF!)do Set %1%%a%%b=!%1:~0x%%a%%b,1!
Set %17F=&set/p%1FF=<%windir%\system32\noise.chs&Set %1FF=!%1FF:~,1!&goto:eof