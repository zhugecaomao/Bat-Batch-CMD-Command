::dim ������������ָ���ı����ͺ���
::���巽����call :dim ������ ������ǰ�������ȹرձ����ӳ٣�
::���÷�����%_������% ����1 ����2 ����3 ... ����N
::
::����
::   %_strlen% "This is test." len
::   rem �� This is test. �ĳ��ȴ洢�ڱ��� len��
::
::    �����ͺ������� netbenton ������¸�������ڱ�������е������������Ա���Ϊý��ʵ��
::��������Ч�����ú�����������ı����ͺ�������ֻ֧�ֵ���������ȱ�ݣ��� plp626 �Ľ�����
::һ���ֵļ�������Ч��Ϊ���ۣ�ʵ�ֶ�������棬ʹ�����ͺ����������ʵķ�Ծ���������е�
::�����ͺ����Ĳ�����ʽ��ͬ����ͳ����������һ�£�������Ҳ���ھ���Ч�����ȡ�
::
::ԭ����ַ��
::���������ĸ�Ч����Ӧ�ã���call��Ŷ����  http://bbs.bathome.net/thread-5861-1-1.html
::��call�����б� ���� ������ı����ͺ���    http://bbs.bathome.net/thread-15051-1-1.html
::
::    ����һ�������ͺ���֮��ֻҪδɾ���ñ������������ʹ�ã���ֻ���� %_������% �ĸ�ʽ��
::�ñ�����δ������Ԥ����ı����ͺ�����ʧȥЧ�á�
::
::    �����д��� for �� if ��䣬��������ʱ���齫��������������������������߼���������
::�����������б��������ӻ��Ч�����һ��Ӱ�죬�ʽ��龡��������������ı����ͺ�����
::
::<<���������>>
::
::�����ں�����
::���ڼ�⺯��   %_checkdate%   %1:��   %2:��   %3:��
::����ת��������   %_date2days%   %1:��   %2:��   %3:��   %4:�洢����ֵ�ı�����
::����ת���ں���   _days2date   %1:����   %2:�������   %3:�±�����   %4:�ձ�����
::
::����ֵ���㡿
::��ƽ������   _sqrt   %1:��������   %2:�洢����ֵ�ı�����
::������ת�˽���   _2x8   %1:��ת����   %2:�洢����ֵ�ı�����
::������תʮ����   _2x10   %1:��ת����   %2:�洢����ֵ�ı�����
::������תʮ������   _2x16   %1:��ת����   %2:�洢����ֵ�ı�����
::�˽���ת������   _8x2   %1:��ת����   %2:�洢����ֵ�ı�����
::�˽���תʮ������   _8x16   %1:��ת����   %2:�洢����ֵ�ı�����
::ʮ����ת������   _10x2   %1:��ת����   %2:�洢����ֵ�ı�����
::ʮ����ת�˽���   _10x8   %1:��ת����   %2:�洢����ֵ�ı�����
::ʮ����ת�˽���   _10x16   %1:��ת����   %2:�洢����ֵ�ı�����
::ʮ������ת������   _16x2   %1:��ת����   %2:�洢����ֵ�ı�����
::ʮ������ת�˽���   _16x8   %1:��ת����   %2:�洢����ֵ�ı�����
::N ����ת N ����   _nxn   %1:��ת����   %2:�洢����ֵ�ı�����   %3:��ǰ����   %4:Ŀ�����
::
::���ַ���������
::��д��ĸתСд����   _downcase   %1:��ת�����ַ��� %2:�洢����ֵ�ı�����
::��д��ĸתСд����   _upcase   %1:��ת�����ַ��� %2:�洢����ֵ�ı�����
::�ַ������ȼ��㺯��   _append   %1:ԭ�ַ���   %2:�洢����ֵ�ı�����   %3:���ӵĴ���   %4:Ҫ���ӵ�����
::�ַ������ȼ��㺯��   _insert   %1:ԭ�ַ���   %2:�洢����ֵ�ı�����   %3:����Ĵ���   %4:Ҫ���������
::�ַ������ȼ��㺯��   _strlen   %1:ԭ�ַ���   %2:�洢����ֵ�ı�����
::�ؼ��ʼ��� _count   %1:���ڼ������ַ���   %2:�洢����ֵ�ı�����   %3:�ؼ���   ������ count ����ʱ���������������п��У���

:dim ������1 ������2 ������3 ... ������N
if !t!.==. echo ����ȫ�ֺ���ǰ�������ӳٱ��봦�ڹر�״̬&exit/b1
set _1=set "_%%:=setlocal enabledelayedexpansion&set n=&set :=&for %%a in (0 1)do if defined : ((for %%b in (!:!)do set/a n+=1&set #!n!=%%~b)&
set _2=)else if %%a==1 (endlocal)else set :="
(set _1=&set _2=
for %%: in (%*)do (
	rem ���ں�����
	if /i %%:==checkdate %_1%set/a"!#4!=1,y=#1,m=#2,d=#3,test=^^!^(y%%4^|^^!^(y%%100^)*^^!^^!^(y%%400^)^)*^^!^(m^^^^2^)+^(m+m/8^)%%2-2*^^!^(m^^^^2^)+30,0/^(test/d*^^!^(m/13^)^),!#4!=0"2>nu%_2%
	if /i %%:==date2days %_1%set/ad="10!#3!%%100+30*^(m=10!#2!%%100^)+m/9*-~m/2+^^!^(m/9^)*m/2+^^!^^!^(m/3^)*^(^^!^(^(y=!#1!^)%%4^)-^^!^(y%%100^)+^^!^(y%%400^)-2^)+y*365+~-y/4-~-y/100+~-y/400-396"&for /f %%z in ("!#4!=!d!")do endlocal&set %%z%_2%
	if /i %%:==days2date %_1%set/a"d=!#1!,d-=d/1461-d/36524+d/146097,y=d/365+1,r=^^!^(y%%4^)-^^!^(y%%100^)+^^!^(y%%400^),d+=^(d%%=365^)/^(212+r^)*30+r,d+=^^!^^!^(d/^(59+r^)^)*^(2-r^),m=d/61*2+d%%61/31,d-=m*61/2+m*61%%2-1,m+=1-m/8"&for %%z in ("!#2!=!y!,!#3!=!m!,!#4!=!d!")do endlocal&set/a%%z%_2%
	if /i %%:==weeks %_1%set /a "m+=^^!^(^(m=10!#2!%%100^)/3^)*12,w=^(7!#3!+2*m+3*^(m+1^)/5+^(y=!#1!-m/13^)+y/4-y/100+y/400+1^)%%7"&for %%z in ("!#4!=!w!")do endlocal&set %%z%_2%

	rem ��ֵ����
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

	rem �ַ���������
	if /i %%:==downcase %_1%set n=&(for %%a in (a b c d e f g h i j k l m n o p q r s t u v w x y z)do set #1=!#1:%%a=%%a!)&for /f "delims=" %%z in ("!#2!=!#1!")do endlocal&set %%z%_2%
	if /i %%:==upcase %_1%set n=&(for %%a in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)do set #1=!#1:%%a=%%a!)&for /f "delims=" %%z in ("!#2!=!#1!")do endlocal&set %%z%_2%
	if /i %%:==append %_1%set n=&(for /l %%a in (1 1 !#3!)do set n=!n!!#4!)&for /f "delims=" %%z in ("!#2!=!#1!!n!")do endlocal&set %%z%_2%
	if /i %%:==insert %_1%set n=&(for /l %%a in (1 1 !#3!)do set n=!n!!#1:~%%a,1!!#4!)&for %%a in (!#3!)do set n=!n!!#1:~%%a!&for /f "delims=" %%z in ("!#2!=!n!")do endlocal&set %%z%_2%
	if /i %%:==strlen %_1%set $=!#1!#&(set n=&for %%z in (4096 2048 1024 512 256 128 64 32 16)do if !$:~%%z!. neq . set/an+=%%z&set $=!$:~%%z!)&set $=!$!fedcba9876543210&set/aN+=0x!$:~16,1!&for /f "delims=" %%z in ("!#2!=!n!")do endlocal&set %%z%_2%
	if /i %%:==count %_1%set str=!#1!&set ret=!#2!&set key=:!#3!&(for %%a in ("!_hh!")do for /f "delims=" %%b in ("!key!")do for /f "delims=" %%c in ("[!str%%b=%%~a]!")do set /a n+=1)&for %%z in ("!ret!=!n!")do endlocal&set %%z%_2%&set _hh=^


))
exit/b0