:::::::::::::::::::::::::::::::::ºº×Ö×ªÆ´Òô:::::::::::::::::::::::::::::::::
:: Ê¹ÓÃÓÃ·¨£º call hz2py InputString   £¨½¨Òé×÷ÎªÍâ²¿º¯Êıµ÷ÓÃ£¬²»ÒËÄÚÇ¶£© ::
::              %1  InputString  ÉèÖÃÒª×ª»»µÄ×Ö·û´®£¬ÎªÌá¸ß¼æÈİĞÔ£¬       ::
::                               ½«Õ¼ÓÃÖ÷ÅúµÄ %hz2py% ±äÁ¿¡£              ::
:: ÒòÎª±¾º¯ÊıÊ¹ÓÃÄÚÖÃºº×ÖÆ´Òô¶ÔÕÕ±í£¬ËùÒÔÇë±£³Öº¯Êı½Å±¾µÄÃû³ÆÎª hz2py.cmd ::
:: ĞèÈ·±£±¾»úÇøÓòÓïÑÔÉèÖÃÎª¼òÌåÖĞÎÄ¡¢ÒÔÆ´ÒôÅÅĞò£¬·ñÔò½«³ö´í£¬²»Çø·Ö¶àÒô×Ö ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:hz2py Input  ######   http://bbs.bathome.net   Crlf
setlocal&set "hz2py=%~1"&setlocal enabledelayedexpansion&set str=
if !hz2py:~1599!@ neq @ echo Error:×ÖÊı²»ÕıÈ·&exit/b2
for %%a in (ß¹ a °£ ai °± an °¹ ang °¼ ao °Å ba °× bai °à ban
°î bang °ú bao ±­ bei ±¼ ben ±À beng ±Æ bi ±ß bian ±ê biao ±ï bie ±ò bin ±ù bing ²£ bo
²· bu ²Á ca ²Â cai ²Î can ²Ô cang ²Ù cao ²Ş ce á¯ cen ²ã ceng ²æ cha ²ğ chai ²ô chan ²ş
chang ³¯ chao ³µ che ³¼ chen ³Ç cheng ³Õ chi ³æ chong ³ë chou ³ø chu Şõ chuai ´© chuan
´° chuang ´¶ chui ´» chun ê¡ chuo ´Ä ci ´Ğ cong ´Õ cou ´Ö cu ´Ú cuan ´Ş cui ´å cun ´è cuo
´î da ´ô dai µ£ dan µ± dang µ¶ dao µÃ de µÆ deng µÍ di àÇ dia µà dian µğ diao µù die ¶¡
ding ¶ª diu ¶« dong ¶¼ dou ¶½ du ¶Ë duan ¶Ñ dui ¶Ö dun ¶ß duo ¶ë e ÚÀ ei ¶÷ en ¶ù er ·¢
fa ·« fan ·» fang ·Ç fei ·Ò fen ·á feng ·ğ fo ó¾ fou ·ò fu ¸Â ga ¸Ã gai ¸Ê gan ¸Ô gang ¸Ş
gao ¸ç ge ¸ø gei ¸ù gen ¸û geng ¹¤ gong ¹´ gou ¹½ gu ¹Ï gua ¹Ô guai ¹Ø guan ¹â guang
¹æ gui ¹õ gun ¹ù guo ¹ş ha º¢ hai º¨ han º» hang º¾ hao ºÇ he ºÚ hei ºÛ hen ºà heng ºä
hong ºî hou ºõ hu »¨ hua »² huai »¶ huan »Ä huang »Ò hui »è hun ïÁ huo »÷ ji ¼Ï jia ¼ß
jian ½ª jiang ½· jiao ½Ó jie ½í jin ¾£ jing ¾¼ jiong ¾¿ jiu ¾Ğ ju ¾è juan ¾ï jv ¾ù jun ¿§ ka ¿ª
kai ¿¯ kan ¿µ kang ¿¼ kao ¿Á ke ¿Ï ken ¿Ó keng ¿Õ kong ¿Ù kou ¿İ ku ¿ä kua ¿é kuai ¿í
kuan ¿ï kuang ¿÷ kui À¤ kun À© kuo À¬ la À´ lai À· lan ÀÅ lang ÀÌ lao ÀÖ le À× lei Àâ leng
Àå li Á« lian Á¹ liang ÁÄ liao ÁĞ lie ÁÖ lin Áá ling Áï liu Áú long Â¦ lou Â¬ lu ÂÍ luan ÂÕ lun
ÂÜ luo Â¿ lv ÂÔ lve Âè ma Âñ mai Âø man Ã¢ mang Ã¨ mao Ã´ me Ãµ mei ÃÅ men ÃÈ meng
ÃĞ mi Ãß mian Ãç miao Ãğ mie Ãñ min Ã÷ ming Ãı miu Ãş mo Ä² mou Ä· mu ÄÃ na ÄË nai
ÄĞ nan ÄÒ nang ÄÓ nao Ú« ne ÄÙ nei ÄÛ nen ÄÜ neng Äİ ni Äé nian Äï niang Äñ niao Äó nie
Äú nin Äü ning Å£ niu Å¨ nong ññ nou Å« nu Å¯ nuan Å² nuo îÏ nve Å® nv àŞ o Å· ou Å¿ pa
ÅÄ pai ÅË pan ÅÒ pang Å× pao ÅŞ pei Åç pen Åê peng Å÷ pi Æ« pian Æ¯ piao Æ³ pie Æ´ pin Æ¹
ping ÆÂ po ÆÊ pou ÆË pu ÆÚ qi Æş qia Ç¤ qian Ç¹ qiang ÇÂ qiao ÇĞ qie ÇÕ qin Çà qing Çî
qiong Çğ qiu Çø qu È¦ quan È² qv È¹ qun È» ran È¿ rang ÈÄ rao ÈÇ re ÈÉ ren ÈÓ reng ÈÕ ri
ÈÖ rong Èá rou Èã ru Èî ruan Èï rui Èò run Èô ruo È÷ sa Èù sai Èı san É£ sang É¦ sao É« se
É­ sen É® seng É° sha É¸ shai É» shan ÉË shang ÉÓ shao Éİ she Éê shen Éú sheng Ê§ shi
ÊÕ shou Êà shu Ë¢ shua Ë¥ shuai Ë© shuan Ë« shuang Ë­ shui Ë± shun Ëµ shuo Ë¹ si ËÉ
song ËÑ sou ËÕ su Ëá suan Ëä sui Ëï sun Ëó suo Ëû ta Ì¥ tai Ì® tan ÌÀ tang ÌÎ tao ß¯ te
ÌÚ teng ÌŞ ti Ìì tian Ìô tiao Ìù tie Ìü ting Í¨ tong Íµ tou Í¹ tu ÍÄ tuan ÍÆ tui ÍÌ tun Ø±
tuo ÍÚ wa Íá wai Íä wan Íô wang Íş wei ÎÂ wen ÎÌ weng ÎÎ wo Î× wu Îô xi Ïº xia ÏÆ
xian Ïà xiang Ïô xiao Ğ© xie Ğ¾ xin ĞÇ xing Ğ× xiong Ğİ xiu Ğç xu Ğù xuan Ñ¥ xv Ñ« xun Ñ¹
ya ÑÊ yan Ñë yang Ñü yao Ò¬ ye Ò» yi Òğ yin Ó¢ ying Ó´ yo Ó¶ yong ÓÅ you ÓØ yu Ô§ yuan
Ô» yv ÔÆ yun ÔÑ za ÔÕ zai ÔÛ zan Ôß zang Ôâ zao Ôğ ze Ôô zei Ôõ zen Ôö zeng Ôú zha Õª
zhai Õ± zhan ÕÂ zhang ÕĞ zhao ÕÚ zhe Õä zhen Õô zheng Ö¥ zhi ÖĞ zhong ÖÛ zhou Öé zhu 
×¥ zhua ×§ zhuai ×¨ zhuan ×¯ zhuang ×µ zhui ×» zhun ×¾ zhuo ×É zi ×Ø zong ×Ş zou ×â zu
×ë zuan ×ì zui ×ğ zun ×ò zuo )do set str=!str! %%a
for /l %%a in (0 1 1599)do (if !hz2py:~%%a!@==@ echo;!var!&exit /b 0
(set py=&if !hz2py:~%%a! geq ß¹ if !hz2py:~%%a! leq õ¡ (
set str=%str%&set py=zuo&for /l %%b in (1 1 400)do (for /f "tokens=1,2,3*" %%c in (
"!str!")do (if !hz2py:~%%a! geq %%c if !hz2py:~%%a! lss %%e set py=%%d&set str=
if defined str set str=%%e %%f)))&set var=!var! !py!
)&if not defined py set "var=!var!!hz2py:~%%a,1!")
if /i %0==:hz2py endlocal&endlocal&exit/b0
rem ºº×ÖÆ´ÒôÓëÅÅĞò
