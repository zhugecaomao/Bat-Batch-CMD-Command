::dim 函数用于声明指定的变量型函数
::定义方法：call :dim 函数名 （声明前，必须先关闭变量延迟）
::引用方法：%_函数名% 参数1 参数2 参数3 ... 参数N
::
::例：
::   %_strlen% "This is test." len
::   rem 将 This is test. 的长度存储于变量 len。
::
::    变量型函数是由 netbenton 提出的新概念，类似于编程语言中的内联函数，以变量为媒，实现
::反复而高效地引用函数，但最初的变量型函数存在只支持单个参数的缺陷，后经 plp626 改进，以
::一部分的兼容性与效率为代价，实现多参数共存，使变量型函数发生了质的飞跃，本函数中的
::变量型函数的参数格式与同名传统函数往往不一致，功能上也趋于精简，效率优先。
::
::原帖地址：
::批处理函数的高效另类应用（免call的哦！）  http://bbs.bathome.net/thread-5861-1-1.html
::仿call参数列表 调用 多参数的变量型函数    http://bbs.bathome.net/thread-15051-1-1.html
::
::    声明一个变量型函数之后，只要未删除该变量，便可任意使用，但只能以 %_函数名% 的格式引
::用变量，未经初级预处理的变量型函数将失去效用。
::
::    函数中存在 for 和 if 语句，所以引用时建议将函数用引号括起来，以免造成逻辑错误，另外
::由于批处理中变量的增加会对效率造成一定影响，故建议尽量避免声明多余的变量型函数。
::
::<<各函数简介>>
::
::【日期函数】
::日期检测函数   %_checkdate%   %1:年   %2:月   %3:日
::日期转天数函数   %_date2days%   %1:年   %2:月   %3:日   %4:存储返回值的变量名
::天数转日期函数   _days2date   %1:天数   %2:年变量名   %3:月变量名   %4:日变量名
::
::【数值计算】
::开平方函数   _sqrt   %1:被开方数   %2:存储返回值的变量名
::二进制转八进制   _2x8   %1:被转换数   %2:存储返回值的变量名
::二进制转十进制   _2x10   %1:被转换数   %2:存储返回值的变量名
::二进制转十六进制   _2x16   %1:被转换数   %2:存储返回值的变量名
::八进制转二进制   _8x2   %1:被转换数   %2:存储返回值的变量名
::八进制转十六进制   _8x16   %1:被转换数   %2:存储返回值的变量名
::十进制转二进制   _10x2   %1:被转换数   %2:存储返回值的变量名
::十进制转八进制   _10x8   %1:被转换数   %2:存储返回值的变量名
::十进制转八进制   _10x16   %1:被转换数   %2:存储返回值的变量名
::十六进制转二进制   _16x2   %1:被转换数   %2:存储返回值的变量名
::十六进制转八进制   _16x8   %1:被转换数   %2:存储返回值的变量名
::N 进制转 N 进制   _nxn   %1:被转换数   %2:存储返回值的变量名   %3:当前进制   %4:目标进制
::
::【字符串函数】
::大写字母转小写函数   _downcase   %1:被转换的字符串 %2:存储返回值的变量名
::大写字母转小写函数   _upcase   %1:被转换的字符串 %2:存储返回值的变量名
::字符串长度计算函数   _append   %1:原字符串   %2:存储返回值的变量名   %3:附加的次数   %4:要附加的内容
::字符串长度计算函数   _insert   %1:原字符串   %2:存储返回值的变量名   %3:插入的次数   %4:要插入的内容
::字符串长度计算函数   _strlen   %1:原字符串   %2:存储返回值的变量名
::关键词计数 _count   %1:用于计数的字符串   %2:存储返回值的变量名   %3:关键词   （定义 count 函数时，必须后跟至少两行空行！）

:dim 函数名1 函数名2 函数名3 ... 函数名N
if !t!.==. echo 定义全局函数前，变量延迟必须处于关闭状态&exit/b1
set _1=set "_%%:=setlocal enabledelayedexpansion&set n=&set :=&for %%a in (0 1)do if defined : ((for %%b in (!:!)do set/a n+=1&set #!n!=%%~b)&
set _2=)else if %%a==1 (endlocal)else set :="
(set _1=&set _2=
for %%: in (%*)do (
	rem 日期函数：
	if /i %%:==checkdate %_1%set/a"!#4!=1,y=#1,m=#2,d=#3,test=^^!^(y%%4^|^^!^(y%%100^)*^^!^^!^(y%%400^)^)*^^!^(m^^^^2^)+^(m+m/8^)%%2-2*^^!^(m^^^^2^)+30,0/^(test/d*^^!^(m/13^)^),!#4!=0"2>nu%_2%
	if /i %%:==date2days %_1%set/ad="10!#3!%%100+30*^(m=10!#2!%%100^)+m/9*-~m/2+^^!^(m/9^)*m/2+^^!^^!^(m/3^)*^(^^!^(^(y=!#1!^)%%4^)-^^!^(y%%100^)+^^!^(y%%400^)-2^)+y*365+~-y/4-~-y/100+~-y/400-396"&for /f %%z in ("!#4!=!d!")do endlocal&set %%z%_2%
	if /i %%:==days2date %_1%set/a"d=!#1!,d-=d/1461-d/36524+d/146097,y=d/365+1,r=^^!^(y%%4^)-^^!^(y%%100^)+^^!^(y%%400^),d+=^(d%%=365^)/^(212+r^)*30+r,d+=^^!^^!^(d/^(59+r^)^)*^(2-r^),m=d/61*2+d%%61/31,d-=m*61/2+m*61%%2-1,m+=1-m/8"&for %%z in ("!#2!=!y!,!#3!=!m!,!#4!=!d!")do endlocal&set/a%%z%_2%
	if /i %%:==weeks %_1%set /a "m+=^^!^(^(m=10!#2!%%100^)/3^)*12,w=^(7!#3!+2*m+3*^(m+1^)/5+^(y=!#1!-m/13^)+y/4-y/100+y/400+1^)%%7"&for %%z in ("!#4!=!w!")do endlocal&set %%z%_2%

	rem 数值计算
	if /i %%:==sqrt %_1%(set n=&for /l %%a in (15 -1)do set/a"n+=s=1^<^<%%a,n+=s*^(^(#1-n*n^)^>^>31^)") 2>nul&for %%z in ("!#2!=!n!")do endlocal&set %%z%_2%
	if /i %%:==2x8 %_1%set #1=00!#1!&(for %%a in (0 1 2 3 4 5 6 7)do set/an=0%%a,[=n/4%%2,]=n/2%%2,n%%=2&set _![!!]!!n!=%%a)&set n=&(for /l %%a in (1 1 16)do for %%b in (!#1:~-3!)do set n=!_%%b!!n!&set #1=000!#1:~,-3!))&(for /f "tokens=1*delims==0" %%y in ("!#2!=!n!")do endlocal&set %%y=%%z%_2%
	if /i %%:==2x10 %_1%set n=&(for /l %%a in (1 1 31) do set/an+=!#1:~-1!^<^<%%a-1&set #1=0!#1:~,-1!)&for /f "delims=" %%z in ("!#2!=!n!")do endlocal&set %%z%_2%
	if /i %%:==2x16 %_1%set #1=000!#1!&(for %%a in (0 1 2 3 4 5 6 7 8 9 A B C D E F)do set/an=0x%%a,[=n/8%%2,]=n/4%%2,{=n/2%%2,}=n%%2&set _![!!]!!{!!}!=%%a)&set n=&(for /l %%a in (1 1 8)do for %%b in (!#1:~-4!)do set n=!_%%b!!n!&set #1=0000!#1:~,-4!))&(for /f "tokens=1*delims==0" %%y in ("!#2!=!n!")do endlocal&set %%y=%%z%_2%
	if /i %%:==8x2 %_1%(for %%a in (0 1 2 3 4 5 6 7)do set/an=0x%%a,[=n/4%%2,]=n/2%%2,n%%=2&for %%b in ("![!!]!!n!")do set #1=!#1:%%a=%%~b!)&for /f "tokens=1*delims==0" %%y in ("!#2!=!#1!")do endlocal&set %%y=%%z%_2%
	if /i %%:==8x16 %_1%set $=0123456789ABCDEF&set/an=0,#1=0!#1!&(for /l %%a in (32 -4)do set/am=#1%%16,#1/=16&for %%b in (!m!)do set n=!$:~%%b,1!!n!)&for /f "tokens=1*delims==0" %%y in ("!#2!=!n:~,-1!")do endlocal&set %%y=%%z%_2%
	if /i %%:==10x2 %_1%set n=&(for /l %%a in (1 1 31) do set/a"m=^(#1^>^>%%a-1^)%%2"&set n=!m!!n!)&for /f "tokens=1*delims==0" %%y in ("!#2!=!n!")do endlocal&set %%y=%%z%_2%
	if /i %%:==10x8 %_1%set n=&(for /l %%a in (33 -3)do set/a"n+=n*9+^(#1^>^>%%a^)%%8")&for /f "tokens=1*delims==0" %%y in ("!#2!=!n!")do endlocal&set %%y=%%z%_2%
	if /i %%:==10x16 %_1%set $=0123456789ABCDEF&set n=&(for /l %%a in (32 -4)do set/am=#1%%16,#1/=16&for %%b in (!m!)do set n=!$:~%%b,1!!n!)&for /f "tokens=1*delims==0" %%y in ("!#2!=!n!")do endlocal&set %%y=%%z%_2%
	if /i %%:==16x2 %_1%(for %%a in (0 1 2 3 4 5 6 7 8 9 A B C D E F)do set/an=0x%%a,[=n/8,]=n/4%%2,{=n/2%%2,}=n%%2&for %%b in ("![!!]!!{!!}!")do set #1=!#1:%%a=%%~b!)&for /f "tokens=1*delims==0" %%y in ("!#2!=!#1:x=!")do endlocal&set %%y=%%z%_2%
	if /i %%:==16x8 %_1%set n=&(for /l %%a in (33 -3)do set/a"n+=n*9+^(0x!#1:x=!^>^>%%a^)%%8")&for /f "tokens=1*delims==0" %%y in ("!#2!=!n!")do endlocal&set %%y=%%z%_2%
	if /i %%:==nxn %_1%set n=0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ&(for /l %%a in (0 1 35)do set _!n:~%%a,1!=%%a&set _%%a=!n:~%%a,1!)&(for /l %%a in (0 1 30)do if !#1:~%%a! gtr _ set/a$=$*#3+_!#1:~%%a,1!)&set n=&(for /l %%a in (0 1 30)do set/am=$%%#4,$/=#4&for %%b in (!m!)do set n=!_%%b!!n!)&for /f "eol==delims=" %%y in ("!#2!")do for /f "tokens=*delims=0" %%z in ("!n!")do endlocal&set %%y=%%z%_2%

	rem 字符串函数：
	if /i %%:==downcase %_1%set n=&(for %%a in (a b c d e f g h i j k l m n o p q r s t u v w x y z)do set #1=!#1:%%a=%%a!)&for /f "delims=" %%z in ("!#2!=!#1!")do endlocal&set %%z%_2%
	if /i %%:==upcase %_1%set n=&(for %%a in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)do set #1=!#1:%%a=%%a!)&for /f "delims=" %%z in ("!#2!=!#1!")do endlocal&set %%z%_2%
	if /i %%:==append %_1%set n=&(for /l %%a in (1 1 !#3!)do set n=!n!!#4!)&for /f "delims=" %%z in ("!#2!=!#1!!n!")do endlocal&set %%z%_2%
	if /i %%:==insert %_1%set n=&(for /l %%a in (1 1 !#3!)do set n=!n!!#1:~%%a,1!!#4!)&for %%a in (!#3!)do set n=!n!!#1:~%%a!&for /f "delims=" %%z in ("!#2!=!n!")do endlocal&set %%z%_2%
	if /i %%:==strlen %_1%set $=!#1!#&(set n=&for %%z in (4096 2048 1024 512 256 128 64 32 16)do if !$:~%%z!. neq . set/an+=%%z&set $=!$:~%%z!)&set $=!$!fedcba9876543210&set/aN+=0x!$:~16,1!&for /f "delims=" %%z in ("!#2!=!n!")do endlocal&set %%z%_2%
	if /i %%:==count %_1%set str=!#1!&set ret=!#2!&set key=:!#3!&(for %%a in ("!_hh!")do for /f "delims=" %%b in ("!key!")do for /f "delims=" %%c in ("[!str%%b=%%~a]!")do set /a n+=1)&for %%z in ("!ret!=!n!")do endlocal&set %%z%_2%&set _hh=^


))
exit/b0