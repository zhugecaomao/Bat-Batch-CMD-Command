@shift 1

?

cls

@ECHO off 

title 分秒必争简单批处理工具

color 0A 

:main

MODE con: COLS=73 lines=39

cls          

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃            分秒必争简单个人DOS批处理工具             ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo                  现在是：%date% %time% 

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃  ┏━━━━━━━━━━━━━━━━━━━━━━━┓  ┃

echo       ┃  ┃                系统主菜单                    ┃  ┃

echo       ┃  ┗━━━━━━━━━━━━━━━━━━━━━━━┛  ┃

echo       ┃    [1] 系统优化以及修复等等(速度由此而提升)          ┃

echo       ┃                                                      ┃

echo       ┃    [2] 系统安全方面(包括简单的病毒查杀)              ┃

echo       ┃                                                      ┃

echo       ┃    [3] 系统信息查看(让你更了解你的操作系统)          ┃

echo       ┃                                                      ┃

echo       ┃    [4] 系统个性化(打造自己的操作系统)                ┃

echo       ┃                                                      ┃

echo       ┃    [5] 其它功能(不知道该分在哪类，嘿嘿)              ┃

echo       ┃  ┏━━━━━━━━━━━━━━━━━━━━━━━┓  ┃

echo       ┃  ┃               常用功能菜单                   ┃  ┃

echo       ┃  ┗━━━━━━━━━━━━━━━━━━━━━━━┛  ┃

echo       ┃    [6] 清除系统中的垃圾文件(让世界从此清静)          ┃

echo       ┃                                                      ┃

echo       ┃    [7] 硬盘医生(检查硬盘的逻辑坏道并修复)            ┃

echo       ┃                                                      ┃

echo       ┃    [8] 杀毒(清除SXS病毒及一些简单的自传播病毒)       ┃

echo       ┃                                                      ┃

echo       ┃    [9] 把某个盘的文件系统由FAT32转换为NTFS           ┃

echo       ┃                                                      ┃

echo       ┃    [0] 关于本工具(想了解本玩意的功能就进来)          ┃

echo       ┃                                                      ┃

echo       ┃    [H] 查看作者主页(愿意的自己点)                    ┃

echo       ┃                                                      ┃

echo       ┃    [Q] 退出(哈哈,一切搞定,用完收工)                  ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

set /p UserSelection=       请输入您的选择(1/2/3/4/5/6/7/8/9/0):

IF not "%UserSelection%"=="" SET UserSelection=%UserSelection:~0,1%

if "%UserSelection%"=="1" goto main1

if "%UserSelection%"=="2" goto main2

if "%UserSelection%"=="3" goto main3

if "%UserSelection%"=="4" goto main4

if "%UserSelection%"=="5" goto main5

if "%UserSelection%"=="6" goto clear

if "%UserSelection%"=="7" goto chkdsk

if "%UserSelection%"=="8" goto virus

if "%UserSelection%"=="9" goto ntfs

if "%UserSelection%"=="0" goto about

if /I "%UserSelection%"=="H" goto http

if /I "%UserSelection%"=="Q" goto 

cls

echo.

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃              选择无效,按任意键返回菜单               ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo.

echo                  现在是：%date% %time% 

@pause >nul

goto main







@rem

:http

start http://xlyz.lsxy.com/blog

cls

goto main



@rem 系统优化以及修复菜单

:main1

cls          

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃            分秒必争简单个人DOS批处理工具             ┃

echo       ┃         我的BLOG   http://xlyz.lsxy.com/blog         ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo                  现在是：%date% %time% 

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃  ┏━━━━━━━━━━━━━━━━━━━━━━━┓  ┃

echo       ┃  ┃             系统优化以及修复菜单             ┃  ┃

echo       ┃  ┗━━━━━━━━━━━━━━━━━━━━━━━┛  ┃

echo       ┃    [1] 删除所有系统内置墙纸                          ┃

echo       ┃                                                      ┃

echo       ┃    [2] 删除所有系统内置的屏慕保护                    ┃

echo       ┃                                                      ┃

echo       ┃    [3] 把某个盘的文件系统由FAT32转换为NTFS           ┃

echo       ┃                                                      ┃

echo       ┃    [4] IE修复(若IE出问题,可尝试用此修复)             ┃

echo       ┃                                                      ┃

echo       ┃    [5] xp/2003服务优化，增加系统运行速度             ┃

echo       ┃                                                      ┃

echo       ┃    [6] 硬盘医生(检查硬盘的逻辑坏道并修复)            ┃

echo       ┃                                                      ┃

echo       ┃    [7] 加快开机关机及系统运行速度                    ┃

echo       ┃                                                      ┃

echo       ┃    [8] 清除系统中的垃圾文件(让世界从此清静)          ┃

echo       ┃                                                      ┃

echo       ┃    [9] 碎片整理                                      ┃

echo       ┃                                                      ┃

echo       ┃    [0] 返回主菜单                                    ┃

echo       ┃                                                      ┃

echo       ┃    [Q] 退出                                          ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

set /p UserSelection=       请输入您的选择(1/2/3/4/5/6/7/8/9/0):

IF not "%UserSelection%"=="" SET UserSelection=%UserSelection:~0,1%

if "%UserSelection%"=="1" goto delpap

if "%UserSelection%"=="2" goto delscr

if "%UserSelection%"=="3" goto ntfs

if "%UserSelection%"=="4" goto xiufuie

if "%UserSelection%"=="5" goto services

if "%UserSelection%"=="6" goto chkdsk

if "%UserSelection%"=="7" goto kaiguanji

if "%UserSelection%"=="8" goto clear

if "%UserSelection%"=="9" goto defrag

if "%UserSelection%"=="0" goto main

if "%UserSelection%"=="Q" goto 

cls

echo.

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃              选择无效,按任意键返回菜单               ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo.

echo                  现在是：%date% %time% 

@pause >nul

goto main1



@rem 删除墙纸

:delpap

ECHO 删除墙纸...

DEL "%systemroot%\*.bmp" /q

DEL "%systemroot%\*.jpg" /q

DEL "%systemroot%\*.gif" /q

DEL "%systemroot%\Web\Wallpaper\*.*" /q

cls

echo.

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃              墙纸删除完毕,按任意键返回菜单           ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo.

echo                  现在是：%date% %time% 

@pause >nul

goto main1



@rem 删除屏幕保护

:delscr

ECHO 删除屏幕保护...

DEL "%systemroot%\system32\dllcache\*.scr" /q

DEL "%systemroot%\system32\*.scr" /q

cls

echo.

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃              屏保删除完毕,按任意键返回菜单           ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo.

echo                  现在是：%date% %time% 

@pause >nul

goto main1





@rem 清除系统垃圾

:clear

del /f /s /q %systemdrive%\*.tmp

del /f /s /q %systemdrive%\*.log

del /f /s /q %systemdrive%\*.gid

del /f /s /q %systemdrive%\*.chk

del /f /s /q %systemdrive%\*.old

del /f /s /q %systemdrive%\recycled\*.*

del /f /s /q %windir%\*.bak

del /f /s /q %windir%\prefetch\*.*

rd /s /q %windir%\temp & md %windir%\temp

del /f /q %userprofile%\cookies\*.*

del /f /q %userprofile%\recent\*.*

del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"

del /f /s /q "%userprofile%\Local Settings\Temp\*.*"

del /f /s /q "%userprofile%\recent\*.*"

cls

echo.

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃              垃圾删除完毕,按任意键返回菜单           ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo.

echo                  现在是：%date% %time% 

@pause >nul

goto main1







@rem 转换文件系统

:ntfs

cls

set /p panfu=   输入要转换的盘符:

SET panfu=%panfu:~0,1%

echo.

convert %panfu%: /fs:ntfs /x

echo.

set /p xuanzhe= 是否还要转换其它盘(Yes or No):

IF NOT "%xuanzhe%"=="" SET xuanzhe=%xuanzhe:~0,1%

if /I "%xuanzhe%"=="Y" goto ntfs

if /I "%xuanzhe%"=="N" goto main1

cls

echo.

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃              选择无效,按任意键返回菜单               ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo.

echo                  现在是：%date% %time% 

@pause >nul

goto ntfs







@rem 修复IE

:xiufuie

cls

regsvr32 /s actxprxy.dll

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃■  10                                                ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

regsvr32 /s shdocvw.dll

cls

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃■■■ 15                                             ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

regsvr32 /s oleaut32.dll

cls

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃■■■■  20                                          ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo                  现在是：%date% %time% 

Regsvr32 /s URLMON.DLL

cls

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃■■■■■■ 25                                       ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo                  现在是：%date% %time% 

Regsvr32 /s mshtml.dll

cls

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃■■■■■■■  30                                    ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo                  现在是：%date% %time% 

Regsvr32 /s msjava.dll

cls

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃■■■■■■■■■ 35                                 ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo                  现在是：%date% %time% 

Regsvr32 /s browseui.dll

cls

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃■■■■■■■■■■  40                              ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo                  现在是：%date% %time% 

Regsvr32 /s softpub.dll

cls

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃■■■■■■■■■■■■ 45                           ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo                  现在是：%date% %time% 

Regsvr32 /s wintrust.dll

cls

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃■■■■■■■■■■■■■  50 (优化,WAITING……)     ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo                  现在是：%date% %time% 

Regsvr32 /s initpki.dll

cls

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃■■■■■■■■■■■■■■■ 55                     ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo                  现在是：%date% %time% 

Regsvr32 /s dssenh.dll

cls

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃■■■■■■■■■■■■■■■■  60                  ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo                  现在是：%date% %time% 

Regsvr32 /s rsaenh.dll

cls

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃■■■■■■■■■■■■■■■■■■ 65               ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo                  现在是：%date% %time% 

Regsvr32 /s gpkcsp.dll

cls

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃■■■■■■■■■■■■■■■■■■■  70            ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo                  现在是：%date% %time% 

Regsvr32 /s sccbase.dll

cls

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃■■■■■■■■■■■■■■■■■■■■■ 75         ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo                  现在是：%date% %time% 

Regsvr32 /s slbcsp.dll

cls

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃■■■■■■■■■■■■■■■■■■■■■■  85      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo                  现在是：%date% %time% 

Regsvr32 /s cryptdlg.dll

cls

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃■■■■■■■■■■■■■■■■■■■■■■■■ 90   ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo                  现在是：%date% %time% 

sfc /purgecache

cls

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃■■■■■■■■■■■■■■■■■■■■■■■■■ 100┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo                  现在是：%date% %time% 

echo.

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃              ＩＥ修复完毕,按任意键返回菜单           ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo.

echo                  现在是：%date% %time% 

@pause >nul

goto main1







@rem 系统服务优化

:services

set /p xuanzhe=       请选择您的操作系统(XP/2003):

if /I "%xuanzhe%"=="XP" goto XP

if /I "%xuanzhe%"=="2003" goto 2003

cls

echo.

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃              选择无效,按任意键返回菜单               ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo.

echo                  现在是：%date% %time% 

@pause >nul

goto services

:XP

echo.

echo  正在备份您的服务，以免优化过出问题了可以及时恢复

echo  备份会生成一个以当前时间命名的BAT（批处理）文件

echo  恢复时只要双击即可,正在备份，请稍等......

@echo off

rem  get current date and time

for /f "tokens=1, 2, 3, 4 delims=-/. " %%j in ('Date /T') do set FILENAME=srv_%%j_%%k_%%l_%%m

for /f "tokens=1, 2 delims=: " %%j in ('TIME /T') do set FILENAME=%FILENAME%_%%j_%%k.bat



rem get all service name

sc query type= service state= all| findstr /r /C:"SERVICE_NAME:" >tmpsrv.txt

echo Save Service Start State In %FILENAME%

rem save service start state into batch file 

rem



echo @echo Restore The Service Start State Saved At %TIME% %DATE% >"%FILENAME%" 

echo @pause >>"%FILENAME%"



for /f "tokens=2 delims=:" %%j in (tmpsrv.txt) do @( sc qc %%j |findstr  START_TYPE >tmpstype.txt &&  for /f "tokens=4 delims=:_ " %%s in ( tmpstype.txt) do @echo sc config  %%j start= %%s >>"%FILENAME%")

echo @pause >>"%FILENAME%"



del tmpsrv.txt

del tmpstype.txt



echo  备份完成，启动优化服务程序，请稍等....



sc config   Alerter start= DISABLED 

sc config   ALG start= DISABLED 

sc config   AppMgmt start= DEMAND 

sc config   AudioSrv start= AUTO  

sc config   BITS start= DISABLED

sc config   Browser start= DISABLED

sc config   CiSvc start= DISABLED

sc config   ClipSrv start= DISABLED 

sc config   COMSysApp start= DEMAND 

sc config   CryptSvc start= DEMAND 

sc config   DcomLaunch start= AUTO 

sc config   Dhcp start= AUTO 

sc config   dmadmin start= DEMAND 

sc config   dmserver start= AUTO 

sc config   Dnscache start= AUTO 

sc config   ERSvc start= DISABLED 

sc config   Eventlog start= AUTO 

sc config   EventSystem start= DEMAND

sc config   helpsvc start= DISABLED 

sc config   HidServ start= DISABLED 

sc config   HTTPFilter start= DEMAND 

sc config   ImapiService start= DISABLED

sc config   lanmanserver start= DISABLED

sc config   lanmanworkstation start= AUTO 

sc config   LmHosts start= DISABLED 

sc config   Messenger start= DISABLED 

sc config   MSDTC start= DISABLED 

sc config   MSIServer start= DEMAND 

sc config   NetDDE start= DISABLED 

sc config   NetDDEdsdm start= DISABLED 

sc config   Netlogon start= DISABLED 

sc config   Netman start= DEMAND 

sc config   Nla start= DISABLED 

sc config   NtLmSsp start= DISABLED 

sc config   NtmsSvc start= DEMAND 

sc config   ose start= DEMAND 

sc config   PlugPlay start= AUTO 

sc config   PolicyAgent start= DEMAND 

sc config   ProtectedStorage start= AUTO

sc config   RasAuto start= DEMAND 

sc config   RasMan start= DEMAND 

sc config   RDSessMgr start= DISABLED 

sc config   remoteAccess start= DISABLED 

sc config   remoteRegistry start= DISABLED 

sc config   RpcLocator start= DISABLED 

sc config   RpcSs start= AUTO 

sc config   SamSs start= AUTO 

sc config   SCardSvr start= DISABLED 

sc config   Schedule start= AUTO 

sc config   seclogon start= AUTO 

sc config   SENS start= AUTO 

sc config   SharedAccess start= DEMAND 

sc config   ShellHWDetection start= AUTO 

sc config   Spooler start= AUTO 

sc config   stisvc start= DEMAND 

sc config   swprv start= DISABLED 

sc config   SysmonLog start= DISABLED 

sc config   TapiSrv start= DEMAND 

sc config   TermService start= DISABLED 

sc config   Themes start= AUTO 

sc config   TrkWks start= DISABLED 

sc config   UMWdf start= DEMAND 

sc config   UPS start= DISABLED 

sc config   VSS start= DISABLED 

sc config   W32Time start= DISABLED 

sc config   WebClient start= DISABLED 

sc config   winmgmt start= AUTO 

sc config   WmdmPmSN start= DISABLED 

sc config   Wmi start= DEMAND 

sc config   WmiApSrv start= DISABLED 

sc config   wuauserv start= DISABLED 

sc config   WZCSVC start= DISABLED 

sc config   xmlprov start= DEMAND 

sc config   DcomLaunch start= AUTO 

sc config   FastUserSwitchingCompatibility start= DEMAND 

sc config   srservice start= DISABLED 

sc config   SSDPSRV start= DISABLED 

sc config   TlntSvr start= DISABLED 

sc config   upnphost start= DEMAND 

sc config   wscsvc start= DISABLED 

cls

echo.

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃              服务优化完毕,按任意键返回菜单           ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo.

echo                  现在是：%date% %time% 

@pause >nul

goto main1





:2003

echo.

echo  正在备份您的服务，以免优化过出问题了可以及时恢复

echo  备份会生成一个以当前时间命名的BAT（批处理）文件

echo  恢复时只要双击即可,正在备份，请稍等......



for /f "tokens=1, 2, 3, 4 delims=-/. " %%j in ('Date /T') do set FILENAME=srv_%%j_%%k_%%l_%%m

for /f "tokens=1, 2 delims=: " %%j in ('TIME /T') do set FILENAME=%FILENAME%_%%j_%%k.bat





sc query type= service state= all| findstr /r /C:"SERVICE_NAME:" >tmpsrv.txt

echo Save Service Start State In %FILENAME%





echo @echo Restore The Service Start State Saved At %TIME% %DATE% >"%FILENAME%" 

echo @pause >>"%FILENAME%"



for /f "tokens=2 delims=:" %%j in (tmpsrv.txt) do @( sc qc %%j |findstr  START_TYPE >tmpstype.txt &&  for /f "tokens=4 delims=:_ " %%s in ( tmpstype.txt) do @echo sc config  %%j start= %%s >>"%FILENAME%")

echo @pause >>"%FILENAME%"

del tmpsrv.txt

del tmpstype.txt



echo  备份完成，启动优化服务程序，请稍等....

sc config   AeLookupSvc start= AUTO

sc config   Alerter start= DISABLED 

sc config   ALG start= DISABLED 

sc config   AppMgmt start= DEMAND 

sc config   AudioSrv start= AUTO 

sc config   BITS start= DISABLED

sc config   Browser start= DISABLED

sc config   CiSvc start= DISABLED 

sc config   ClipSrv start= DISABLED 

sc config   COMSysApp start= DEMAND 

sc config   CryptSvc start= DEMAND 

sc config   DcomLaunch start= AUTO 

sc config   Dfs start= DEMAND 

sc config   Dhcp start= AUTO 

sc config   dmadmin start= DEMAND 

sc config   dmserver start= AUTO 

sc config   Dnscache start= AUTO 

sc config   ERSvc start= DISABLED 

sc config   Eventlog start= AUTO 

sc config   EventSystem start= DEMAND 

sc config   helpsvc start= DISABLED 

sc config   HidServ start= DISABLED 

sc config   HTTPFilter start= DEMAND 

sc config   ImapiService start= DISABLED

sc config   IsmServ start= DISABLED 

sc config   kdc start= DISABLED 

sc config   lanmanserver start= DISABLED

sc config   lanmanworkstation start= AUTO 

sc config   LmHosts start= DISABLED 

sc config   Messenger start= DISABLED 

sc config   mnmsrvc start= DISABLED 

sc config   MSDTC start= DISABLED 

sc config   MSIServer start= DEMAND 

sc config   NetDDE start= DISABLED 

sc config   NetDDEdsdm start= DISABLED 

sc config   Netlogon start= DISABLED 

sc config   Netman start= DEMAND 

sc config   Nla start= DISABLED 

sc config   NtFrs start= DEMAND 

sc config   NtLmSsp start= DISABLED 

sc config   NtmsSvc start= DEMAND 

sc config   PlugPlay start= AUTO 

sc config   PolicyAgent start= DEMAND 

sc config   ProtectedStorage start= AUTO 

sc config   RasAuto start= DEMAND 

sc config   RasMan start= DEMAND 

sc config   RDSessMgr start= DISABLED 

sc config   remoteRegistry start= DISABLED 

sc config   RpcLocator start= DISABLED 

sc config   RpcSs start= AUTO 

sc config   RSoPProv start= DEMAND 

sc config   sacsvr start= DISABLED 

sc config   SamSs start= AUTO 

sc config   SCardSvr start= DISABLED 

sc config   Schedule start= AUTO 

sc config   seclogon start= AUTO 

sc config   SENS start= AUTO 

sc config   SharedAccess start= DEMAND 

sc config   ShellHWDetection start= AUTO 

sc config   Spooler start= AUTO 

sc config   stisvc start= DEMAND 

sc config   swprv start= DISABLED 

sc config   SysmonLog start= DISABLED 

sc config   TapiSrv start= DEMAND 

sc config   TermService start= DISABLED 

sc config   Themes start= AUTO 

sc config   TrkSvr start= DISABLED 

sc config   TrkWks start= DISABLED 

sc config   Tssdis start= DISABLED 

sc config   UMWdf start= DEMAND 

sc config   UPS start= DISABLED 

sc config   vds start= DEMAND 

sc config   VSS start= DISABLED 

sc config   W32Time start= DISABLED 

sc config   WebClient start= DISABLED 

sc config   WinHttpAutoProxySvc start= DEMAND 

sc config   winmgmt start= AUTO 

sc config   WmdmPmSN start= DISABLED 

sc config   Wmi start= DEMAND 

sc config   WmiApSrv start= DISABLED 

sc config   wuauserv start= DISABLED 

sc config   WZCSVC start= DISABLED 

sc config   xmlprov start= DEMAND 

cls

echo.

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃              服务优化完毕,按任意键返回菜单           ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo.

echo                  现在是：%date% %time% 

@pause >nul

goto main1







@rem 检查硬盘逻辑错误

:chkdsk

cls

set /p panfu=      请输入您要检查的盘符:

SET panfu=%panfu:~0,1%

echo.

chkntfs %panfu%:

echo       初步诊断完成，接下来将进入详细诊断......

ping 127.0.0.1 -n 3 >nul

chkdsk %panfu%:

echo.

set /p wenti=       是否检出问题了(Yes or No):

IF NOT "%wenti%"=="" SET wenti=%wenti:~0,1%

if /I "%wenti%"=="Y" goto xiufu

if /I "%wenti%"=="N" goto next

cls

echo.

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃              选择无效,按任意键返回检查               ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo.

echo                  现在是：%date% %time% 

@pause >nul

goto chkdsk

@rem 检查硬盘逻辑错误修复模块

:xiufu

chkdsk %panfu%:  /x /r

:next

echo.

set /p xuanzhe=        是否还要检查其它盘(Yes or No):

IF NOT "%xuanzhe%"=="" SET xuanzhe=%xuanzhe:~0,1%

if /I "%xuanzhe%"=="Y" goto chkdsk

if /I "%xuanzhe%"=="N" goto main1

cls

echo.

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃              选择无效,按任意键返回菜单               ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo.

echo                  现在是：%date% %time% 

@pause >nul

goto chkdsk





@rem 加快开机关机及运行速度

:kaiguanji



reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnablePrefetcher /t REG_DWORD /d 1 /f 

reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer /v AlwaysUnloadDLL /t REG_DWORD /d 1 /f 

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AeDebug" /v Auto /d 0 /f 

cls

echo.

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃              加速完毕,按任意键返回菜单               ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo.

echo                  现在是：%date% %time% 

@pause >nul

goto main1







@rem 碎片整理

:defrag

cls

set /p panfu=       请输入您要整理的盘符：

SET panfu=%panfu:~0,1%

defrag %panfu%: /f /v /a

set /p xuanzhe= 是否须要碎片整理(Yes or No):

SET xuanzhe=%xuanzhe:~0,1%

if /I "%xuanzhe%"=="Y"  cls & echo. & echo         整理碎片中，请稍等...... & echo. & echo. & defrag %panfu%: /f /v >nul

if /I "%xuanzhe%"=="N" goto defrag

set /p xuanzhe=         碎片整理完毕，是否还要检查其它盘(Yes or No):

SET xuanzhe=%xuanzhe:~0,1%

if /I "%xuanzhe%"=="Y" goto defrag

if /I "%xuanzhe%"=="N" goto main1

cls

echo.

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃              选择无效,按任意键返回菜单               ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo.

echo                  现在是：%date% %time% 

@pause >nul

goto chkdsk





@rem 系统安全方面菜单

:main2

MODE con: COLS=73 lines=39

cls          

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃            分秒必争简单个人DOS批处理工具             ┃

echo       ┃         我的BLOG   http://xlyz.lsxy.com/blog         ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo                  现在是：%date% %time% 

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃  ┏━━━━━━━━━━━━━━━━━━━━━━━┓  ┃

echo       ┃  ┃               系统安全方面菜单               ┃  ┃

echo       ┃  ┗━━━━━━━━━━━━━━━━━━━━━━━┛  ┃

echo       ┃    [1] 删除默认共享以提高安全性                      ┃

echo       ┃                                                      ┃

echo       ┃    [2] 关闭135，445端口                              ┃

echo       ┃                                                      ┃

echo       ┃    [3] 删除SXS病毒                                   ┃

echo       ┃                                                      ┃

echo       ┃    [4] 结束非法进程(XP以上系统有效)                  ┃

echo       ┃                                                      ┃

echo       ┃    [5] 威金病毒专杀                                  ┃

echo       ┃                                                      ┃

echo       ┃    [6] 清除灰鸽子                                    ┃

echo       ┃                                                      ┃

echo       ┃    [7] 暂时还没想到                                  ┃

echo       ┃                                                      ┃

echo       ┃    [8] 清空HOST表(若你没编辑过HOST表，就选此项)      ┃

echo       ┃                                                      ┃

echo       ┃    [9] 返回主菜单                                    ┃

echo       ┃                                                      ┃

echo       ┃    [0] 退出                                          ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

set /p UserSelection=       请输入您的选择(1/2/3/4/5/6/7/8/9/0):

IF not "%UserSelection%"=="" SET UserSelection=%UserSelection:~0,1%

if "%UserSelection%"=="1" goto delshare

if "%UserSelection%"=="2" goto port

if "%UserSelection%"=="3" goto virus

if "%UserSelection%"=="4" goto tkill

if "%UserSelection%"=="5" goto viking

if "%UserSelection%"=="6" goto huigezi

if "%UserSelection%"=="7" goto main2

if "%UserSelection%"=="8" goto host

if "%UserSelection%"=="9" goto main

if "%UserSelection%"=="0" goto

cls

echo.

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃              选择无效,按任意键返回菜单               ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo.

echo                  现在是：%date% %time% 

@pause >nul

goto main2







@rem 删除默认共享

:delshare

reg add HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters /v AutoShareWks /t REG_DWORD /d 0 /f

reg add HKLM\SYSTEM\CurrentControlSet\Control\Lsa /v restrictanonymous /t REG_DWORD /d 0 /f

net share c$ /delete

net share d$ /delete

net share e$ /delete

net share f$ /delete

net share g$ /delete

net share h$ /delete

net share i$ /delete

net share admin$ /delete

net share ipc$ /delete

cls 

echo.

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃              删除完结,按任意键返回菜单               ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo.

echo                  现在是：%date% %time% 

@pause >nul

cls 

goto main2





@REM 关闭135，445端口

:port

reg add HKLM\SOFTWARE\Microsoft\Ole /v EnableDCOM /d N /f

reg add HKLM\SOFTWARE\Microsoft\Rpc /v "DCOM Protocols" /t REG_MULTI_SZ /d ncacn_spx\0ncacn_nb_nb\0ncacn_nb_ipx\0 /f

sc config   MSDTC start= DISABLED

reg add HKLM\SYSTEM\CurrentControlSet\Services\NetBT\Parameters /v SMBDeviceEnabled /t REG_DWORD /d 0 /f

cls 

echo.

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃              关闭成功,按任意键返回菜单               ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo.

echo                  现在是：%date% %time% 

@pause >nul

cls 

goto main2







@rem 杀毒(清除SXS病毒及一些简单的自传播病毒)

:virus

cls

FOR %%a IN ( C: D: E: F: G: H: I: J: K: L: M: N: O: P: Q: R: S: T: U: V: W: X: Y: Z: ) DO ATTRIB -R -H -S -A %%a\SXS.EXE & DEL /F /Q /A -R -H -S -A %%a\SXS.EXE & ATTRIB -R -H -S -A %%a\AUTORUN.INF & DEL /F /Q /A -R -H -S -A %%a\AUTORUN.INF

attrib %windir%\sxs.exe -h -s -r

del %windir%\sxs.exe /q

cls 

echo.

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃            简单杀毒完结,按任意键返回菜单             ┃

echo       ┃         若怀疑中毒，请用杀毒软件请再次查杀           ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo.

echo                  现在是：%date% %time% 

@pause >nul

goto main2







@rem 结束非法进程

:tkill

MODE con: COLS=80 lines=39

cls

tasklist

echo.

echo 以上是现在运行的所以进程,请输入你结束的进程名或者PID数字

echo (如:a.exe,system,1841。请务随便结束系统进程,否则后果自负)

set /p jincheng=    请输入要结束的进程名:

taskkill /im %jincheng% /f 

set /p xuanzhe= 是否还要结束其它进程(Yes or No):

if /I "%xuanzhe%"=="Y" goto tkill

if /I "%xuanzhe%"=="N" goto main2

cls

echo.

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃              选择无效,按任意键返回菜单               ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo.

echo                  现在是：%date% %time% 

@pause >nul

goto main2











@rem 威金病毒专杀

:viking

cls

echo         本程序可成功删除硬盘中的以下病毒垃圾文件

echo.

echo         [ _desktop.ini ]        [ command.com  ]

echo         [ autorun.inf  ]        [ pagefile.pif ]

echo         [ logo1_.exe   ]        [ logo_1.exe   ]

echo         [ ?sy.exe      ]        [ sxs.exe      ]

echo.

echo.

echo           要继续请按任意键，要中止请按CTRL+C

@pause >NUL

ECHO        程序运行中，请稍等。。。。。。

echo.

taskkill /F /IM logo1_.exe /T

taskkill /F /IM rundl132.exe /T

del %windir%\rundl132.exe

del %windir%\logo1_.exe

cls

echo         准备处理C盘,LOAD.....

ping 127.0.0.1 -n 5 >nul

c:

cd\

echo      正在处理C盘……

del _desktop.ini                  /a /q /s /f

del autorun.inf                     /a /q /s /f

del command.com                   /a /q /s /f

del pagefile.pif                  /a /q /s /f

del logo_1.exe                    /a /q /s /f

del ?sy.exe                       /a /q /s /f

del sxs.exe                       /a /q /s /f

del logo1_.exe                    /a /q /s /f

del SWS32.DLL                     /a /q /s /f

del KILL.EXE                      /a /q /s /f

del SWS.DLL                       /a /q /s /f

del rose.exe                      /a /q /s /f

cls

echo         准备处理D盘,LOAD.....

ping 127.0.0.1 -n 5 >nul



d:

cd\

echo.         本程序可成功删除硬盘中的以下病毒垃圾文件

echo.

echo         [ _desktop.ini ]        [ command.com  ]

echo         [ autorun.inf  ]        [ pagefile.pif ]

echo         [ logo1_.exe   ]        [ logo_1.exe   ]

echo         [ ?sy.exe      ]        [ sxs.exe      ]

echo.

echo 正在处理D盘……

del _desktop.ini                  /a /q /s /f

del autorun.inf                     /a /q /s /f

del command.com                   /a /q /s /f

del pagefile.pif                  /a /q /s /f

del logo_1.exe                    /a /q /s /f

del ?sy.exe                       /a /q /s /f

del sxs.exe                       /a /q /s /f

del logo1_.exe                    /a /q /s /f

del SWS32.DLL                     /a /q /s /f

del KILL.EXE                      /a /q /s /f

del SWS.DLL                       /a /q /s /f

del rose.exe                      /a /q /s /f

cls

echo         准备处理E盘,LOAD.....

ping 127.0.0.1 -n 5 >nul

e:

cd\

echo.         本程序可成功删除硬盘中的以下病毒垃圾文件

echo.

echo         [ _desktop.ini ]        [ command.com  ]

echo         [ autorun.inf  ]        [ pagefile.pif ]

echo         [ logo1_.exe   ]        [ logo_1.exe   ]

echo         [ 0sy.exe      ]        [ sxs.exe      ]

echo.

echo 正在处理E盘……

del _desktop.ini                  /a /q /s /f

del autorun.inf                   /a /q /s /f

del command.com                   /a /q /s /f

del pagefile.pif                  /a /q /s /f

del logo_1.exe                    /a /q /s /f

del ?sy.exe                       /a /q /s /f

del sxs.exe                       /a /q /s /f

del logo1_.exe                    /a /q /s /f

del SWS32.DLL                     /a /q /s /f

del KILL.EXE                      /a /q /s /f

del SWS.DLL                       /a /q /s /f

del rose.exe                      /a /q /s /f

cls

echo         准备处理F盘,LOAD.....

ping 127.0.0.1 -n 5 >nul

f:

cd\

echo.         本程序可成功删除硬盘中的以下病毒垃圾文件

echo.

echo         [ _desktop.ini ]        [ command.com  ]

echo         [ autorun.inf  ]        [ pagefile.pif ]

echo         [ logo1_.exe   ]        [ logo_1.exe   ]

echo         [ 0sy.exe      ]        [ sxs.exe      ]

echo.

echo 正在处理F盘……

del _desktop.ini                  /a /q /s /f

del autorun.inf                     /a /q /s /f

del command.com                   /a /q /s /f

del pagefile.pif                  /a /q /s /f

del logo_1.exe                    /a /q /s /f

del ?sy.exe                       /a /q /s /f

del sxs.exe                       /a /q /s /f

del logo1_.exe                    /a /q /s /f

del SWS32.DLL                     /a /q /s /f

del KILL.EXE                      /a /q /s /f

del SWS.DLL                       /a /q /s /f

del rose.exe                      /a /q /s /f



cls 

echo.

echo        因为我做G盘查杀的时候，杀毒软件会误报，所以G盘的查杀我就

echo        不做了，请你们用这个查杀后去下专杀或用你们的杀毒软件杀

echo.

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃            简单杀毒完结,按任意键返回菜单             ┃

echo       ┃         若怀疑中毒，请用杀毒软件请再次查杀           ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo.

echo                  现在是：%date% %time% 

@pause >nul

goto main2







@rem 清空HOST表

:host

echo. >%windir%\system32\drivers\etc\hosts

cls

echo.

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃                清空完毕,按任意键返回菜单             ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo.

echo                  现在是：%date% %time% 

@pause >nul

goto main2





@rem 清除灰鸽子

:huigezi

copy %systemroot%\system32\service.exe C:\service.exe 

c:\service -u GrayPigeonServer 

c:\service -u "Windows Update" 

attrib -R -A -S -H %Windir%\G.DLL 

del %Windir%\G.DLL 

attrib -R -A -S -H %Windir%\G.EXE 

del %Windir%\G.EXE 

attrib -R -A -S -H %Windir%\G_Hook.DLL 

del %Windir%\G_Hook.DLL

attrib -R -A -S -H %Windir%\GKey.DLL 

del %Windir%\GKey.DLL  

goto main2



@rem 系统信息查看菜单

:main3

cls          

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃            分秒必争简单个人DOS批处理工具             ┃

echo       ┃         我的BLOG   http://xlyz.lsxy.com/blog         ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo                  现在是：%date% %time% 

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃  ┏━━━━━━━━━━━━━━━━━━━━━━━┓  ┃

echo       ┃  ┃                 信息查看菜单                 ┃  ┃

echo       ┃  ┗━━━━━━━━━━━━━━━━━━━━━━━┛  ┃

echo       ┃    [1] 查看系统信息                                  ┃

echo       ┃                                                      ┃

echo       ┃    [2] 查看硬盘空间信息                              ┃

echo       ┃                                                      ┃

echo       ┃    [3] 查看显卡信息                                  ┃

echo       ┃                                                      ┃

echo       ┃    [4] 查看管理工具集                                ┃

echo       ┃                                                      ┃

echo       ┃    [5] 暂时还没想到                                  ┃

echo       ┃                                                      ┃

echo       ┃    [6] 暂时还没想到                                  ┃

echo       ┃                                                      ┃

echo       ┃    [7] 暂时还没想到                                  ┃

echo       ┃                                                      ┃

echo       ┃    [8] 暂时还没想到                                  ┃

echo       ┃                                                      ┃

echo       ┃    [9] 返回主菜单                                    ┃

echo       ┃                                                      ┃

echo       ┃    [0] 退出                                          ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

set /p UserSelection=       请输入您的选择(1/2/3/4/5/6/7/8/9/0):

IF not "%UserSelection%"=="" SET UserSelection=%UserSelection:~0,1%

if "%UserSelection%"=="1" goto system

if "%UserSelection%"=="2" goto drivers

if "%UserSelection%"=="3" goto xianka

if "%UserSelection%"=="4" goto guanli

if "%UserSelection%"=="5" goto main3

if "%UserSelection%"=="6" goto main3

if "%UserSelection%"=="7" goto main3

if "%UserSelection%"=="8" goto main3

if "%UserSelection%"=="9" goto main

if "%UserSelection%"=="0" goto

ccls

echo.

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃              选择无效,按任意键返回菜单               ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo.

echo                  现在是：%date% %time% 

@pause >nul

goto main3



@rem 系统信息

:system

echo dim wshshell >>"%userprofile%\Local Settings\Temp\system.vbs"

echo set wshshell=wscript.createobject("wscript.shell") >>"%userprofile%\Local Settings\Temp\system.vbs"

echo dim infor >>"%userprofile%\Local Settings\Temp\system.vbs"

echo iofor="" >>"%userprofile%\Local Settings\Temp\system.vbs"

echo infor=infor+"注册组织名称:  "+wshshell.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\RegisteredOrganization")+vbcrlf >>"%userprofile%\Local Settings\Temp\system.vbs"

echo infor=infor+"注册者:  "+wshshell.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\RegisteredOwner")+vbcrlf >>"%userprofile%\Local Settings\Temp\system.vbs"

echo infor=infor+"操作系统:  "+wshshell.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\ProductName")+vbcrlf >>"%userprofile%\Local Settings\Temp\system.vbs"

echo infor=infor+"版本:  "+wshshell.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\CurrentVersion")+vbcrlf >>"%userprofile%\Local Settings\Temp\system.vbs"

echo infor=infor+"内部版本号:  "+wshshell.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\BuildLab")+vbcrlf >>"%userprofile%\Local Settings\Temp\system.vbs"

echo infor=infor+"补丁:  "+wshshell.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\CSDVersion")+vbcrlf >>"%userprofile%\Local Settings\Temp\system.vbs"

echo infor=infor+"产品标识:  "+wshshell.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\ProductId")+vbcrlf >>"%userprofile%\Local Settings\Temp\system.vbs"

echo msgbox infor,vbinformation,"系统信息" >>"%userprofile%\Local Settings\Temp\system.vbs"

"%userprofile%\Local Settings\Temp\system.vbs"

del "%userprofile%\Local Settings\Temp\system.vbs" /q

goto main3





@rem 查看硬盘空间信息

:drivers

echo 'sub writefile(detail) >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo 'set fs=createobject("scripting.filesystemobject") >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo 'set file=fs.createtextfile("驱动器信息.txt",true) >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo 'file.write detail >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo 'file.close >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo 'set fs=nothing >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo 'end sub >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo sub dispdrvstat(drvname) >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo dim dn >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo dn=left(drvname,1) >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo set drv=fso.getdrive(dn) >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo with drv >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo select case.drivetype >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo case 1 >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo dn="软盘" >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo case 2 >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo dn="硬盘" >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo case 4 >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo dn="光盘" >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo end select >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo drvinfo=drvinfo+"驱动器类型:"+dn+vbcrlf >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo if.isready then >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo drvinfo=drvinfo+"驱动器情况:已准备"+vbcrlf >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo drvinfo=drvinfo+"驱动器未用容量:"+cstr(.freespace/1024/1024/1024)+"GB"+vbcrlf >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo drvinfo=drvinfo+"驱动器全部容量:"+cstr(.totalsize/1024/1024/1024)+"GB"+vbcrlf >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo drvinfo=drvinfo+"驱动器文件系统:"+.filesystem+vbcrlf >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo drvinfo=drvinfo+"驱动器序列号:"+cstr(.serialnumber)+vbcrlf >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo drvinfo=drvinfo+"驱动器共享名:"+sharename+vbcrlf >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo else >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo drvinfo=drvinfo+"驱动器情况:未准备"+vbcrlf >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo drvinfo=drvinfo+"驱动器共享名:"+sharename+vbcrlf >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo end if >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo end with >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo end sub >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo set fso=createobject("scripting.filesystemobject") >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo dim drv >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo dim drvs >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo dim drvinfo >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo set drvs=fso.drives >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo for each drv in drvs >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo if drv.isready then >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo drvinfo=drvinfo+drv.driveletter+":\["+drv.volumename+"]"+vbcrlf >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo else >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo drvinfo=drvinfo+drv.driveletter+":\"+vbcrlf >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo end if >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo call dispdrvstat(drv.driveletter) >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo next >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo set fso=nothing >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo msgbox drvinfo,,"驱动器信息" >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo 'call writefile(drvinfo) >>"%userprofile%\Local Settings\Temp\drivers.vbs"

"%userprofile%\Local Settings\Temp\drivers.vbs"

del "%userprofile%\Local Settings\Temp\drivers.vbs" /q

goto main3





@rem 显卡信息

:xianka

echo strComputer = ^".^" >"%userprofile%\Local Settings\Temp\xianka.vbs"

echo. >>"%userprofile%\Local Settings\Temp\xianka.vbs"

echo ^Set objWMIService ^= GetObject^(^"winmgmts:\\^" ^& strComputer ^& ^"\root\cimv2^") >>"%userprofile%\Local Settings\Temp\xianka.vbs"

echo.>>"%userprofile%\Local Settings\Temp\xianka.vbs"

echo ^Set colItems ^= objWMIService.ExecQuery _ >>"%userprofile%\Local Settings\Temp\xianka.vbs"

echo ^(^"Select * From Win32_DisplayConfiguration^"^) >>"%userprofile%\Local Settings\Temp\xianka.vbs"

echo. >>"%userprofile%\Local Settings\Temp\xianka.vbs"

echo ^For Each objItem in colItems >>"%userprofile%\Local Settings\Temp\xianka.vbs"

echo ^Wscript^.^Echo ^"显示芯片: ^" ^& ^objItem^.^DeviceName^&^+vbcrlf^&^"色深: ^" ^& objItem.BitsPerPel ^& ^"位^"^&^+vbcrlf^&^"分辨率: ^" ^& ^objItem.^PelsWidth ^& ^"*^" ^& objItem.PelsHeight >>"%userprofile%\Local Settings\Temp\xianka.vbs"

echo. >>"%userprofile%\Local Settings\Temp\xianka.vbs"

echo ^Next >>"%userprofile%\Local Settings\Temp\xianka.vbs"

"%userprofile%\Local Settings\Temp\xianka.vbs"

del "%userprofile%\Local Settings\Temp\xianka.vbs" /q

goto main3





@rem 管理工具集

:guanli

echo Const ADMINISTRATIVE_TOOLS = ^&H2f^& >"%userprofile%\Local Settings\Temp\system.vbs"

echo ^Set objShell = CreateObject("Shell.Application") >>"%userprofile%\Local Settings\Temp\system.vbs"

echo ^Set objFolder = objShell.Namespace(ADMINISTRATIVE_TOOLS)  >>"%userprofile%\Local Settings\Temp\system.vbs"

echo ^Set objTools = objFolder.Items >>"%userprofile%\Local Settings\Temp\system.vbs"

echo ^For i = 0 to objTools.Count - 1 >>"%userprofile%\Local Settings\Temp\system.vbs"

echo ^tools=tools^&objTools.Item(i)^&vbcrlf >>"%userprofile%\Local Settings\Temp\system.vbs"

echo Next >>"%userprofile%\Local Settings\Temp\system.vbs"

echo ^wscript^.^echo ^"有如下管理工具：^"^&vbcrlf^&tools >>"%userprofile%\Local Settings\Temp\system.vbs"

echo set objShell=nothing >>"%userprofile%\Local Settings\Temp\system.vbs"

echo set objFolder=nothing >>"%userprofile%\Local Settings\Temp\system.vbs"

echo set objTools=nothing >>"%userprofile%\Local Settings\Temp\system.vbs"

"%userprofile%\Local Settings\Temp\system.vbs"

del "%userprofile%\Local Settings\Temp\system.vbs" /q

goto main3







@rem 系统个性化菜单

:main4

cls          

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃            分秒必争简单个人DOS批处理工具             ┃

echo       ┃         我的BLOG   http://xlyz.lsxy.com/blog         ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo                  现在是：%date% %time% 

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃  ┏━━━━━━━━━━━━━━━━━━━━━━━┓  ┃

echo       ┃  ┃                系统个性化菜单                ┃  ┃

echo       ┃  ┗━━━━━━━━━━━━━━━━━━━━━━━┛  ┃

echo       ┃    [1] 改变用户名和组织名                            ┃

echo       ┃                                                      ┃

echo       ┃    [2] 修改IE标题为任何你想要的文字                  ┃

echo       ┃                                                      ┃

echo       ┃    [3] 在桌面上显示系统版本                          ┃

echo       ┃                                                      ┃

echo       ┃    [4] Winodws XP 修改计算机名                       ┃

echo       ┃                                                      ┃

echo       ┃    [5] 暂时还没想到                                  ┃

echo       ┃                                                      ┃

echo       ┃    [6] 暂时还没想到                                  ┃

echo       ┃                                                      ┃

echo       ┃    [7] 暂时还没想到                                  ┃

echo       ┃                                                      ┃

echo       ┃    [8] 暂时还没想到                                  ┃

echo       ┃                                                      ┃

echo       ┃    [9] 返回主菜单                                    ┃

echo       ┃                                                      ┃

echo       ┃    [0] 退出                                          ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

set /p UserSelection=       请输入您的选择(1/2/3/4/5/6/7/8/9/0):

IF not "%UserSelection%"=="" SET UserSelection=%UserSelection:~0,1%

if "%UserSelection%"=="1" goto username

if "%UserSelection%"=="2" goto ietitle

if "%UserSelection%"=="3" goto winver

if "%UserSelection%"=="4" goto computername

if "%UserSelection%"=="5" goto main4

if "%UserSelection%"=="6" goto main4

if "%UserSelection%"=="7" goto main4

if "%UserSelection%"=="8" goto main5

if "%UserSelection%"=="9" goto main

if "%UserSelection%"=="0" goto

cls

echo.

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃              选择无效,按任意键返回菜单               ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo.

echo                  现在是：%date% %time% 

@pause >nul

goto main4







@rem 改变用户名和组织名

:username

cls

echo.

echo        注：若本处无法切换输入，请在别处写好在此点右键粘贴即可。

echo        因为这是写注册表的内容，请关闭注册表监控或者同意修改。

echo.

set /p compan=       输入组织名字: 

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v RegisteredOrganization /t REG_SZ /d %compan% /f >nul

set /p user=       输入用户名字:

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v RegisteredOwner /t REG_SZ /d %user% /f >nul

cls 

echo.

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃              修改完毕,按任意键返回菜单               ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo.

echo                  现在是：%date% %time% 

@pause >nul

cls 

goto main4





@rem 修改INTERNET EXPLORER标题

:ietitle

cls

echo.

echo        注：若本处无法切换输入，请在别处写好在此点右键粘贴即可。

echo        因为这是写注册表的内容，请关闭注册表监控或者同意修改。

echo.

set /p IETitle=       输入修改INTERNET EXPLORER标题内容: 

reg add "HKCU\Software\Microsoft\Internet Explorer\Main" /v "Window Title" /t REG_SZ /d %IETitle% /f >nul

cls 

echo.

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃              修改完毕,按任意键返回菜单               ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo.

echo                  现在是：%date% %time% 

@pause >nul

cls 

goto main4





@rem 在桌面上显示系统版本

:winver

reg add "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d 1 /f >nul

cls 

echo.

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃              重启后将会在桌面上显示系统版本          ┃

echo       ┃                修改完毕,按任意键返回菜单             ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo.

echo                  现在是：%date% %time% 

@pause >nul

cls 

goto main4



@rem 修改计算机名

:computername

set /p name=   请输您想要的计算机名：

reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\ComputerName\ActiveComputerName" /v ComputerName /t reg_sz /d %name% /f

reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v "NV Hostname" /t reg_sz /d %name% /f 

reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v Hostname /t reg_sz /d %name% /f 

goto main4



@rem 其它功能菜单

:main5

cls          

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃            分秒必争简单个人DOS批处理工具             ┃

echo       ┃         我的BLOG   http://xlyz.lsxy.com/blog         ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo                  现在是：%date% %time% 

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃  ┏━━━━━━━━━━━━━━━━━━━━━━━┓  ┃

echo       ┃  ┃                系统个性化菜单                ┃  ┃

echo       ┃  ┗━━━━━━━━━━━━━━━━━━━━━━━┛  ┃

echo       ┃    [1] IE7.0和MPlayer11和Windows Defender破解安装    ┃

echo       ┃                                                      ┃

echo       ┃    [2] 把作者页设置为主页                            ┃

echo       ┃                                                      ┃

echo       ┃    [3] 和任意QQ号码进行聊天                          ┃

echo       ┃                                                      ┃

echo       ┃    [4] 暂时还没想到                                  ┃

echo       ┃                                                      ┃

echo       ┃    [5] 暂时还没想到                                  ┃

echo       ┃                                                      ┃

echo       ┃    [6] 暂时还没想到                                  ┃

echo       ┃                                                      ┃

echo       ┃    [7] 暂时还没想到                                  ┃

echo       ┃                                                      ┃

echo       ┃    [8] 暂时还没想到                                  ┃

echo       ┃                                                      ┃

echo       ┃    [9] 返回主菜单                                    ┃

echo       ┃                                                      ┃

echo       ┃    [0] 退出                                          ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

set /p UserSelection=       请输入您的选择(1/2/3/4/5/6/7/8/9/0):

IF not "%UserSelection%"=="" SET UserSelection=%UserSelection:~0,1%

if "%UserSelection%"=="1" goto creak

if "%UserSelection%"=="2" goto web

if "%UserSelection%"=="3" goto QQ

if "%UserSelection%"=="4" goto main5

if "%UserSelection%"=="5" goto main5

if "%UserSelection%"=="6" goto main5

if "%UserSelection%"=="7" goto main5

if "%UserSelection%"=="8" goto main5

if "%UserSelection%"=="9" goto main

if "%UserSelection%"=="0" goto

cls

echo.

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃              选择无效,按任意键返回菜单               ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo.

echo                  现在是：%date% %time% 

@pause >nul

goto main5







@rem IE7.0和MPlayer11和Windows Defender破解安装

:creak

del /f /s /q "%systemdrive%\Documents and Settings\All Users\Application Data\Windows Genuine Advantage\data\data.dat" >nul

cls 

echo.

echo       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━┓

echo       ┃                                                      ┃

echo       ┃    请断网后安装IE7.0和Media Player11和 Windows       ┃

echo       ┃          Defender 并按任意键返回菜单                 ┃

echo       ┃                                                      ┃

echo       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

echo.

@pause >nul

cls 

goto main5



@rem 把作者页面改为主页

:web

reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /t reg_sz /d http://xlyz.lsxy.com/blog /f >nul

reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Default_Page_URL" /t reg_sz /d http://xlyz.lsxy.com/blog /f >nul

goto main5



@rem 和任意QQ进行聊天

:QQ

set /p num=　    请输入你想要和哪个人聊天的QQ号码:

If /I "%num%"=="" goto start

start tencent://Message/?Uin=%num%

goto main5





@rem 关于本工具

:about

echo msgbox "此工具乃我无聊的时候所编，没有任何技术，没有版权，想怎么"+vbCrlf+"改就怎么改本工具是在WinXP之下乱搞搞出来的，所以只要你是XP"+vbCrlf+"系统，那用本工具肯定没问题。关于其它系统，我没做测试，我想"+vbCrlf+"很多功能都是通用的。经过几次的修改，这个玩意儿的功能已经有"+vbCrlf+"点多了，虽然算不上强大。但至少是方便的。因为这是通过你的系"+vbCrlf+"统内置的文件来完成里面的工作。而本工具编写完全是简单的DOS命"+vbCrlf+"令，所以本工具绝对不会对你的系统放置病毒什么的，因此，你可"+vbCrlf+"以完全放心的使用！"+vbCrlf+"                                                 分秒必争",,"关于简单批处理" >>"%userprofile%\Local Settings\Temp\about.vbs"

"%userprofile%\Local Settings\Temp\about.vbs"

del "%userprofile%\Local Settings\Temp\about.vbs" /q

goto main 
