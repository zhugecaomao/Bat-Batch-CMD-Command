@shift 1

?

cls

@ECHO off 

title �����������������

color 0A 

:main

MODE con: COLS=73 lines=39

cls          

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��            ��������򵥸���DOS��������             ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo                  �����ǣ�%date% %time% 

echo       ����������������������������������������������������������

echo       ��  ��������������������������������������������������  ��

echo       ��  ��                ϵͳ���˵�                    ��  ��

echo       ��  ��������������������������������������������������  ��

echo       ��    [1] ϵͳ�Ż��Լ��޸��ȵ�(�ٶ��ɴ˶�����)          ��

echo       ��                                                      ��

echo       ��    [2] ϵͳ��ȫ����(�����򵥵Ĳ�����ɱ)              ��

echo       ��                                                      ��

echo       ��    [3] ϵͳ��Ϣ�鿴(������˽���Ĳ���ϵͳ)          ��

echo       ��                                                      ��

echo       ��    [4] ϵͳ���Ի�(�����Լ��Ĳ���ϵͳ)                ��

echo       ��                                                      ��

echo       ��    [5] ��������(��֪���÷������࣬�ٺ�)              ��

echo       ��  ��������������������������������������������������  ��

echo       ��  ��               ���ù��ܲ˵�                   ��  ��

echo       ��  ��������������������������������������������������  ��

echo       ��    [6] ���ϵͳ�е������ļ�(������Ӵ��徲)          ��

echo       ��                                                      ��

echo       ��    [7] Ӳ��ҽ��(���Ӳ�̵��߼��������޸�)            ��

echo       ��                                                      ��

echo       ��    [8] ɱ��(���SXS������һЩ�򵥵��Դ�������)       ��

echo       ��                                                      ��

echo       ��    [9] ��ĳ���̵��ļ�ϵͳ��FAT32ת��ΪNTFS           ��

echo       ��                                                      ��

echo       ��    [0] ���ڱ�����(���˽Ȿ����Ĺ��ܾͽ���)          ��

echo       ��                                                      ��

echo       ��    [H] �鿴������ҳ(Ը����Լ���)                    ��

echo       ��                                                      ��

echo       ��    [Q] �˳�(����,һ�и㶨,�����չ�)                  ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

set /p UserSelection=       ����������ѡ��(1/2/3/4/5/6/7/8/9/0):

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

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��              ѡ����Ч,����������ز˵�               ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo.

echo                  �����ǣ�%date% %time% 

@pause >nul

goto main







@rem

:http

start http://xlyz.lsxy.com/blog

cls

goto main



@rem ϵͳ�Ż��Լ��޸��˵�

:main1

cls          

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��            ��������򵥸���DOS��������             ��

echo       ��         �ҵ�BLOG   http://xlyz.lsxy.com/blog         ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo                  �����ǣ�%date% %time% 

echo       ����������������������������������������������������������

echo       ��  ��������������������������������������������������  ��

echo       ��  ��             ϵͳ�Ż��Լ��޸��˵�             ��  ��

echo       ��  ��������������������������������������������������  ��

echo       ��    [1] ɾ������ϵͳ����ǽֽ                          ��

echo       ��                                                      ��

echo       ��    [2] ɾ������ϵͳ���õ���Ľ����                    ��

echo       ��                                                      ��

echo       ��    [3] ��ĳ���̵��ļ�ϵͳ��FAT32ת��ΪNTFS           ��

echo       ��                                                      ��

echo       ��    [4] IE�޸�(��IE������,�ɳ����ô��޸�)             ��

echo       ��                                                      ��

echo       ��    [5] xp/2003�����Ż�������ϵͳ�����ٶ�             ��

echo       ��                                                      ��

echo       ��    [6] Ӳ��ҽ��(���Ӳ�̵��߼��������޸�)            ��

echo       ��                                                      ��

echo       ��    [7] �ӿ쿪���ػ���ϵͳ�����ٶ�                    ��

echo       ��                                                      ��

echo       ��    [8] ���ϵͳ�е������ļ�(������Ӵ��徲)          ��

echo       ��                                                      ��

echo       ��    [9] ��Ƭ����                                      ��

echo       ��                                                      ��

echo       ��    [0] �������˵�                                    ��

echo       ��                                                      ��

echo       ��    [Q] �˳�                                          ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

set /p UserSelection=       ����������ѡ��(1/2/3/4/5/6/7/8/9/0):

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

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��              ѡ����Ч,����������ز˵�               ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo.

echo                  �����ǣ�%date% %time% 

@pause >nul

goto main1



@rem ɾ��ǽֽ

:delpap

ECHO ɾ��ǽֽ...

DEL "%systemroot%\*.bmp" /q

DEL "%systemroot%\*.jpg" /q

DEL "%systemroot%\*.gif" /q

DEL "%systemroot%\Web\Wallpaper\*.*" /q

cls

echo.

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��              ǽֽɾ�����,����������ز˵�           ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo.

echo                  �����ǣ�%date% %time% 

@pause >nul

goto main1



@rem ɾ����Ļ����

:delscr

ECHO ɾ����Ļ����...

DEL "%systemroot%\system32\dllcache\*.scr" /q

DEL "%systemroot%\system32\*.scr" /q

cls

echo.

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��              ����ɾ�����,����������ز˵�           ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo.

echo                  �����ǣ�%date% %time% 

@pause >nul

goto main1





@rem ���ϵͳ����

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

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��              ����ɾ�����,����������ز˵�           ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo.

echo                  �����ǣ�%date% %time% 

@pause >nul

goto main1







@rem ת���ļ�ϵͳ

:ntfs

cls

set /p panfu=   ����Ҫת�����̷�:

SET panfu=%panfu:~0,1%

echo.

convert %panfu%: /fs:ntfs /x

echo.

set /p xuanzhe= �Ƿ�Ҫת��������(Yes or No):

IF NOT "%xuanzhe%"=="" SET xuanzhe=%xuanzhe:~0,1%

if /I "%xuanzhe%"=="Y" goto ntfs

if /I "%xuanzhe%"=="N" goto main1

cls

echo.

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��              ѡ����Ч,����������ز˵�               ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo.

echo                  �����ǣ�%date% %time% 

@pause >nul

goto ntfs







@rem �޸�IE

:xiufuie

cls

regsvr32 /s actxprxy.dll

echo       ����������������������������������������������������������

echo       ����  10                                                ��

echo       ����������������������������������������������������������

regsvr32 /s shdocvw.dll

cls

echo       ����������������������������������������������������������

echo       �������� 15                                             ��

echo       ����������������������������������������������������������

regsvr32 /s oleaut32.dll

cls

echo       ����������������������������������������������������������

echo       ����������  20                                          ��

echo       ����������������������������������������������������������

echo                  �����ǣ�%date% %time% 

Regsvr32 /s URLMON.DLL

cls

echo       ����������������������������������������������������������

echo       �������������� 25                                       ��

echo       ����������������������������������������������������������

echo                  �����ǣ�%date% %time% 

Regsvr32 /s mshtml.dll

cls

echo       ����������������������������������������������������������

echo       ����������������  30                                    ��

echo       ����������������������������������������������������������

echo                  �����ǣ�%date% %time% 

Regsvr32 /s msjava.dll

cls

echo       ����������������������������������������������������������

echo       �������������������� 35                                 ��

echo       ����������������������������������������������������������

echo                  �����ǣ�%date% %time% 

Regsvr32 /s browseui.dll

cls

echo       ����������������������������������������������������������

echo       ����������������������  40                              ��

echo       ����������������������������������������������������������

echo                  �����ǣ�%date% %time% 

Regsvr32 /s softpub.dll

cls

echo       ����������������������������������������������������������

echo       �������������������������� 45                           ��

echo       ����������������������������������������������������������

echo                  �����ǣ�%date% %time% 

Regsvr32 /s wintrust.dll

cls

echo       ����������������������������������������������������������

echo       ����������������������������  50 (�Ż�,WAITING����)     ��

echo       ����������������������������������������������������������

echo                  �����ǣ�%date% %time% 

Regsvr32 /s initpki.dll

cls

echo       ����������������������������������������������������������

echo       �������������������������������� 55                     ��

echo       ����������������������������������������������������������

echo                  �����ǣ�%date% %time% 

Regsvr32 /s dssenh.dll

cls

echo       ����������������������������������������������������������

echo       ����������������������������������  60                  ��

echo       ����������������������������������������������������������

echo                  �����ǣ�%date% %time% 

Regsvr32 /s rsaenh.dll

cls

echo       ����������������������������������������������������������

echo       �������������������������������������� 65               ��

echo       ����������������������������������������������������������

echo                  �����ǣ�%date% %time% 

Regsvr32 /s gpkcsp.dll

cls

echo       ����������������������������������������������������������

echo       ����������������������������������������  70            ��

echo       ����������������������������������������������������������

echo                  �����ǣ�%date% %time% 

Regsvr32 /s sccbase.dll

cls

echo       ����������������������������������������������������������

echo       �������������������������������������������� 75         ��

echo       ����������������������������������������������������������

echo                  �����ǣ�%date% %time% 

Regsvr32 /s slbcsp.dll

cls

echo       ����������������������������������������������������������

echo       ����������������������������������������������  85      ��

echo       ����������������������������������������������������������

echo                  �����ǣ�%date% %time% 

Regsvr32 /s cryptdlg.dll

cls

echo       ����������������������������������������������������������

echo       �������������������������������������������������� 90   ��

echo       ����������������������������������������������������������

echo                  �����ǣ�%date% %time% 

sfc /purgecache

cls

echo       ����������������������������������������������������������

echo       ���������������������������������������������������� 100��

echo       ����������������������������������������������������������

echo                  �����ǣ�%date% %time% 

echo.

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��              �ɣ��޸����,����������ز˵�           ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo.

echo                  �����ǣ�%date% %time% 

@pause >nul

goto main1







@rem ϵͳ�����Ż�

:services

set /p xuanzhe=       ��ѡ�����Ĳ���ϵͳ(XP/2003):

if /I "%xuanzhe%"=="XP" goto XP

if /I "%xuanzhe%"=="2003" goto 2003

cls

echo.

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��              ѡ����Ч,����������ز˵�               ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo.

echo                  �����ǣ�%date% %time% 

@pause >nul

goto services

:XP

echo.

echo  ���ڱ������ķ��������Ż����������˿��Լ�ʱ�ָ�

echo  ���ݻ�����һ���Ե�ǰʱ��������BAT���������ļ�

echo  �ָ�ʱֻҪ˫������,���ڱ��ݣ����Ե�......

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



echo  ������ɣ������Ż�����������Ե�....



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

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��              �����Ż����,����������ز˵�           ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo.

echo                  �����ǣ�%date% %time% 

@pause >nul

goto main1





:2003

echo.

echo  ���ڱ������ķ��������Ż����������˿��Լ�ʱ�ָ�

echo  ���ݻ�����һ���Ե�ǰʱ��������BAT���������ļ�

echo  �ָ�ʱֻҪ˫������,���ڱ��ݣ����Ե�......



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



echo  ������ɣ������Ż�����������Ե�....

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

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��              �����Ż����,����������ز˵�           ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo.

echo                  �����ǣ�%date% %time% 

@pause >nul

goto main1







@rem ���Ӳ���߼�����

:chkdsk

cls

set /p panfu=      ��������Ҫ�����̷�:

SET panfu=%panfu:~0,1%

echo.

chkntfs %panfu%:

echo       ���������ɣ���������������ϸ���......

ping 127.0.0.1 -n 3 >nul

chkdsk %panfu%:

echo.

set /p wenti=       �Ƿ���������(Yes or No):

IF NOT "%wenti%"=="" SET wenti=%wenti:~0,1%

if /I "%wenti%"=="Y" goto xiufu

if /I "%wenti%"=="N" goto next

cls

echo.

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��              ѡ����Ч,����������ؼ��               ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo.

echo                  �����ǣ�%date% %time% 

@pause >nul

goto chkdsk

@rem ���Ӳ���߼������޸�ģ��

:xiufu

chkdsk %panfu%:  /x /r

:next

echo.

set /p xuanzhe=        �Ƿ�Ҫ���������(Yes or No):

IF NOT "%xuanzhe%"=="" SET xuanzhe=%xuanzhe:~0,1%

if /I "%xuanzhe%"=="Y" goto chkdsk

if /I "%xuanzhe%"=="N" goto main1

cls

echo.

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��              ѡ����Ч,����������ز˵�               ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo.

echo                  �����ǣ�%date% %time% 

@pause >nul

goto chkdsk





@rem �ӿ쿪���ػ��������ٶ�

:kaiguanji



reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnablePrefetcher /t REG_DWORD /d 1 /f 

reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer /v AlwaysUnloadDLL /t REG_DWORD /d 1 /f 

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AeDebug" /v Auto /d 0 /f 

cls

echo.

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��              �������,����������ز˵�               ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo.

echo                  �����ǣ�%date% %time% 

@pause >nul

goto main1







@rem ��Ƭ����

:defrag

cls

set /p panfu=       ��������Ҫ������̷���

SET panfu=%panfu:~0,1%

defrag %panfu%: /f /v /a

set /p xuanzhe= �Ƿ���Ҫ��Ƭ����(Yes or No):

SET xuanzhe=%xuanzhe:~0,1%

if /I "%xuanzhe%"=="Y"  cls & echo. & echo         ������Ƭ�У����Ե�...... & echo. & echo. & defrag %panfu%: /f /v >nul

if /I "%xuanzhe%"=="N" goto defrag

set /p xuanzhe=         ��Ƭ������ϣ��Ƿ�Ҫ���������(Yes or No):

SET xuanzhe=%xuanzhe:~0,1%

if /I "%xuanzhe%"=="Y" goto defrag

if /I "%xuanzhe%"=="N" goto main1

cls

echo.

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��              ѡ����Ч,����������ز˵�               ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo.

echo                  �����ǣ�%date% %time% 

@pause >nul

goto chkdsk





@rem ϵͳ��ȫ����˵�

:main2

MODE con: COLS=73 lines=39

cls          

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��            ��������򵥸���DOS��������             ��

echo       ��         �ҵ�BLOG   http://xlyz.lsxy.com/blog         ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo                  �����ǣ�%date% %time% 

echo       ����������������������������������������������������������

echo       ��  ��������������������������������������������������  ��

echo       ��  ��               ϵͳ��ȫ����˵�               ��  ��

echo       ��  ��������������������������������������������������  ��

echo       ��    [1] ɾ��Ĭ�Ϲ�������߰�ȫ��                      ��

echo       ��                                                      ��

echo       ��    [2] �ر�135��445�˿�                              ��

echo       ��                                                      ��

echo       ��    [3] ɾ��SXS����                                   ��

echo       ��                                                      ��

echo       ��    [4] �����Ƿ�����(XP����ϵͳ��Ч)                  ��

echo       ��                                                      ��

echo       ��    [5] ���𲡶�רɱ                                  ��

echo       ��                                                      ��

echo       ��    [6] ����Ҹ���                                    ��

echo       ��                                                      ��

echo       ��    [7] ��ʱ��û�뵽                                  ��

echo       ��                                                      ��

echo       ��    [8] ���HOST��(����û�༭��HOST����ѡ����)      ��

echo       ��                                                      ��

echo       ��    [9] �������˵�                                    ��

echo       ��                                                      ��

echo       ��    [0] �˳�                                          ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

set /p UserSelection=       ����������ѡ��(1/2/3/4/5/6/7/8/9/0):

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

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��              ѡ����Ч,����������ز˵�               ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo.

echo                  �����ǣ�%date% %time% 

@pause >nul

goto main2







@rem ɾ��Ĭ�Ϲ���

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

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��              ɾ�����,����������ز˵�               ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo.

echo                  �����ǣ�%date% %time% 

@pause >nul

cls 

goto main2





@REM �ر�135��445�˿�

:port

reg add HKLM\SOFTWARE\Microsoft\Ole /v EnableDCOM /d N /f

reg add HKLM\SOFTWARE\Microsoft\Rpc /v "DCOM Protocols" /t REG_MULTI_SZ /d ncacn_spx\0ncacn_nb_nb\0ncacn_nb_ipx\0 /f

sc config   MSDTC start= DISABLED

reg add HKLM\SYSTEM\CurrentControlSet\Services\NetBT\Parameters /v SMBDeviceEnabled /t REG_DWORD /d 0 /f

cls 

echo.

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��              �رճɹ�,����������ز˵�               ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo.

echo                  �����ǣ�%date% %time% 

@pause >nul

cls 

goto main2







@rem ɱ��(���SXS������һЩ�򵥵��Դ�������)

:virus

cls

FOR %%a IN ( C: D: E: F: G: H: I: J: K: L: M: N: O: P: Q: R: S: T: U: V: W: X: Y: Z: ) DO ATTRIB -R -H -S -A %%a\SXS.EXE & DEL /F /Q /A -R -H -S -A %%a\SXS.EXE & ATTRIB -R -H -S -A %%a\AUTORUN.INF & DEL /F /Q /A -R -H -S -A %%a\AUTORUN.INF

attrib %windir%\sxs.exe -h -s -r

del %windir%\sxs.exe /q

cls 

echo.

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��            ��ɱ�����,����������ز˵�             ��

echo       ��         �������ж�������ɱ��������ٴβ�ɱ           ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo.

echo                  �����ǣ�%date% %time% 

@pause >nul

goto main2







@rem �����Ƿ�����

:tkill

MODE con: COLS=80 lines=39

cls

tasklist

echo.

echo �������������е����Խ���,������������Ľ���������PID����

echo (��:a.exe,system,1841������������ϵͳ����,�������Ը�)

set /p jincheng=    ������Ҫ�����Ľ�����:

taskkill /im %jincheng% /f 

set /p xuanzhe= �Ƿ�Ҫ������������(Yes or No):

if /I "%xuanzhe%"=="Y" goto tkill

if /I "%xuanzhe%"=="N" goto main2

cls

echo.

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��              ѡ����Ч,����������ز˵�               ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo.

echo                  �����ǣ�%date% %time% 

@pause >nul

goto main2











@rem ���𲡶�רɱ

:viking

cls

echo         ������ɳɹ�ɾ��Ӳ���е����²��������ļ�

echo.

echo         [ _desktop.ini ]        [ command.com  ]

echo         [ autorun.inf  ]        [ pagefile.pif ]

echo         [ logo1_.exe   ]        [ logo_1.exe   ]

echo         [ ?sy.exe      ]        [ sxs.exe      ]

echo.

echo.

echo           Ҫ�����밴�������Ҫ��ֹ�밴CTRL+C

@pause >NUL

ECHO        ���������У����Եȡ�����������

echo.

taskkill /F /IM logo1_.exe /T

taskkill /F /IM rundl132.exe /T

del %windir%\rundl132.exe

del %windir%\logo1_.exe

cls

echo         ׼������C��,LOAD.....

ping 127.0.0.1 -n 5 >nul

c:

cd\

echo      ���ڴ���C�̡���

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

echo         ׼������D��,LOAD.....

ping 127.0.0.1 -n 5 >nul



d:

cd\

echo.         ������ɳɹ�ɾ��Ӳ���е����²��������ļ�

echo.

echo         [ _desktop.ini ]        [ command.com  ]

echo         [ autorun.inf  ]        [ pagefile.pif ]

echo         [ logo1_.exe   ]        [ logo_1.exe   ]

echo         [ ?sy.exe      ]        [ sxs.exe      ]

echo.

echo ���ڴ���D�̡���

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

echo         ׼������E��,LOAD.....

ping 127.0.0.1 -n 5 >nul

e:

cd\

echo.         ������ɳɹ�ɾ��Ӳ���е����²��������ļ�

echo.

echo         [ _desktop.ini ]        [ command.com  ]

echo         [ autorun.inf  ]        [ pagefile.pif ]

echo         [ logo1_.exe   ]        [ logo_1.exe   ]

echo         [ 0sy.exe      ]        [ sxs.exe      ]

echo.

echo ���ڴ���E�̡���

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

echo         ׼������F��,LOAD.....

ping 127.0.0.1 -n 5 >nul

f:

cd\

echo.         ������ɳɹ�ɾ��Ӳ���е����²��������ļ�

echo.

echo         [ _desktop.ini ]        [ command.com  ]

echo         [ autorun.inf  ]        [ pagefile.pif ]

echo         [ logo1_.exe   ]        [ logo_1.exe   ]

echo         [ 0sy.exe      ]        [ sxs.exe      ]

echo.

echo ���ڴ���F�̡���

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

echo        ��Ϊ����G�̲�ɱ��ʱ��ɱ��������󱨣�����G�̵Ĳ�ɱ�Ҿ�

echo        �����ˣ��������������ɱ��ȥ��רɱ�������ǵ�ɱ�����ɱ

echo.

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��            ��ɱ�����,����������ز˵�             ��

echo       ��         �������ж�������ɱ��������ٴβ�ɱ           ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo.

echo                  �����ǣ�%date% %time% 

@pause >nul

goto main2







@rem ���HOST��

:host

echo. >%windir%\system32\drivers\etc\hosts

cls

echo.

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��                ������,����������ز˵�             ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo.

echo                  �����ǣ�%date% %time% 

@pause >nul

goto main2





@rem ����Ҹ���

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



@rem ϵͳ��Ϣ�鿴�˵�

:main3

cls          

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��            ��������򵥸���DOS��������             ��

echo       ��         �ҵ�BLOG   http://xlyz.lsxy.com/blog         ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo                  �����ǣ�%date% %time% 

echo       ����������������������������������������������������������

echo       ��  ��������������������������������������������������  ��

echo       ��  ��                 ��Ϣ�鿴�˵�                 ��  ��

echo       ��  ��������������������������������������������������  ��

echo       ��    [1] �鿴ϵͳ��Ϣ                                  ��

echo       ��                                                      ��

echo       ��    [2] �鿴Ӳ�̿ռ���Ϣ                              ��

echo       ��                                                      ��

echo       ��    [3] �鿴�Կ���Ϣ                                  ��

echo       ��                                                      ��

echo       ��    [4] �鿴�����߼�                                ��

echo       ��                                                      ��

echo       ��    [5] ��ʱ��û�뵽                                  ��

echo       ��                                                      ��

echo       ��    [6] ��ʱ��û�뵽                                  ��

echo       ��                                                      ��

echo       ��    [7] ��ʱ��û�뵽                                  ��

echo       ��                                                      ��

echo       ��    [8] ��ʱ��û�뵽                                  ��

echo       ��                                                      ��

echo       ��    [9] �������˵�                                    ��

echo       ��                                                      ��

echo       ��    [0] �˳�                                          ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

set /p UserSelection=       ����������ѡ��(1/2/3/4/5/6/7/8/9/0):

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

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��              ѡ����Ч,����������ز˵�               ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo.

echo                  �����ǣ�%date% %time% 

@pause >nul

goto main3



@rem ϵͳ��Ϣ

:system

echo dim wshshell >>"%userprofile%\Local Settings\Temp\system.vbs"

echo set wshshell=wscript.createobject("wscript.shell") >>"%userprofile%\Local Settings\Temp\system.vbs"

echo dim infor >>"%userprofile%\Local Settings\Temp\system.vbs"

echo iofor="" >>"%userprofile%\Local Settings\Temp\system.vbs"

echo infor=infor+"ע����֯����:  "+wshshell.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\RegisteredOrganization")+vbcrlf >>"%userprofile%\Local Settings\Temp\system.vbs"

echo infor=infor+"ע����:  "+wshshell.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\RegisteredOwner")+vbcrlf >>"%userprofile%\Local Settings\Temp\system.vbs"

echo infor=infor+"����ϵͳ:  "+wshshell.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\ProductName")+vbcrlf >>"%userprofile%\Local Settings\Temp\system.vbs"

echo infor=infor+"�汾:  "+wshshell.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\CurrentVersion")+vbcrlf >>"%userprofile%\Local Settings\Temp\system.vbs"

echo infor=infor+"�ڲ��汾��:  "+wshshell.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\BuildLab")+vbcrlf >>"%userprofile%\Local Settings\Temp\system.vbs"

echo infor=infor+"����:  "+wshshell.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\CSDVersion")+vbcrlf >>"%userprofile%\Local Settings\Temp\system.vbs"

echo infor=infor+"��Ʒ��ʶ:  "+wshshell.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\ProductId")+vbcrlf >>"%userprofile%\Local Settings\Temp\system.vbs"

echo msgbox infor,vbinformation,"ϵͳ��Ϣ" >>"%userprofile%\Local Settings\Temp\system.vbs"

"%userprofile%\Local Settings\Temp\system.vbs"

del "%userprofile%\Local Settings\Temp\system.vbs" /q

goto main3





@rem �鿴Ӳ�̿ռ���Ϣ

:drivers

echo 'sub writefile(detail) >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo 'set fs=createobject("scripting.filesystemobject") >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo 'set file=fs.createtextfile("��������Ϣ.txt",true) >>"%userprofile%\Local Settings\Temp\drivers.vbs"

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

echo dn="����" >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo case 2 >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo dn="Ӳ��" >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo case 4 >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo dn="����" >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo end select >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo drvinfo=drvinfo+"����������:"+dn+vbcrlf >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo if.isready then >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo drvinfo=drvinfo+"���������:��׼��"+vbcrlf >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo drvinfo=drvinfo+"������δ������:"+cstr(.freespace/1024/1024/1024)+"GB"+vbcrlf >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo drvinfo=drvinfo+"������ȫ������:"+cstr(.totalsize/1024/1024/1024)+"GB"+vbcrlf >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo drvinfo=drvinfo+"�������ļ�ϵͳ:"+.filesystem+vbcrlf >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo drvinfo=drvinfo+"���������к�:"+cstr(.serialnumber)+vbcrlf >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo drvinfo=drvinfo+"������������:"+sharename+vbcrlf >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo else >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo drvinfo=drvinfo+"���������:δ׼��"+vbcrlf >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo drvinfo=drvinfo+"������������:"+sharename+vbcrlf >>"%userprofile%\Local Settings\Temp\drivers.vbs"

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

echo msgbox drvinfo,,"��������Ϣ" >>"%userprofile%\Local Settings\Temp\drivers.vbs"

echo 'call writefile(drvinfo) >>"%userprofile%\Local Settings\Temp\drivers.vbs"

"%userprofile%\Local Settings\Temp\drivers.vbs"

del "%userprofile%\Local Settings\Temp\drivers.vbs" /q

goto main3





@rem �Կ���Ϣ

:xianka

echo strComputer = ^".^" >"%userprofile%\Local Settings\Temp\xianka.vbs"

echo. >>"%userprofile%\Local Settings\Temp\xianka.vbs"

echo ^Set objWMIService ^= GetObject^(^"winmgmts:\\^" ^& strComputer ^& ^"\root\cimv2^") >>"%userprofile%\Local Settings\Temp\xianka.vbs"

echo.>>"%userprofile%\Local Settings\Temp\xianka.vbs"

echo ^Set colItems ^= objWMIService.ExecQuery _ >>"%userprofile%\Local Settings\Temp\xianka.vbs"

echo ^(^"Select * From Win32_DisplayConfiguration^"^) >>"%userprofile%\Local Settings\Temp\xianka.vbs"

echo. >>"%userprofile%\Local Settings\Temp\xianka.vbs"

echo ^For Each objItem in colItems >>"%userprofile%\Local Settings\Temp\xianka.vbs"

echo ^Wscript^.^Echo ^"��ʾоƬ: ^" ^& ^objItem^.^DeviceName^&^+vbcrlf^&^"ɫ��: ^" ^& objItem.BitsPerPel ^& ^"λ^"^&^+vbcrlf^&^"�ֱ���: ^" ^& ^objItem.^PelsWidth ^& ^"*^" ^& objItem.PelsHeight >>"%userprofile%\Local Settings\Temp\xianka.vbs"

echo. >>"%userprofile%\Local Settings\Temp\xianka.vbs"

echo ^Next >>"%userprofile%\Local Settings\Temp\xianka.vbs"

"%userprofile%\Local Settings\Temp\xianka.vbs"

del "%userprofile%\Local Settings\Temp\xianka.vbs" /q

goto main3





@rem �����߼�

:guanli

echo Const ADMINISTRATIVE_TOOLS = ^&H2f^& >"%userprofile%\Local Settings\Temp\system.vbs"

echo ^Set objShell = CreateObject("Shell.Application") >>"%userprofile%\Local Settings\Temp\system.vbs"

echo ^Set objFolder = objShell.Namespace(ADMINISTRATIVE_TOOLS)  >>"%userprofile%\Local Settings\Temp\system.vbs"

echo ^Set objTools = objFolder.Items >>"%userprofile%\Local Settings\Temp\system.vbs"

echo ^For i = 0 to objTools.Count - 1 >>"%userprofile%\Local Settings\Temp\system.vbs"

echo ^tools=tools^&objTools.Item(i)^&vbcrlf >>"%userprofile%\Local Settings\Temp\system.vbs"

echo Next >>"%userprofile%\Local Settings\Temp\system.vbs"

echo ^wscript^.^echo ^"�����¹����ߣ�^"^&vbcrlf^&tools >>"%userprofile%\Local Settings\Temp\system.vbs"

echo set objShell=nothing >>"%userprofile%\Local Settings\Temp\system.vbs"

echo set objFolder=nothing >>"%userprofile%\Local Settings\Temp\system.vbs"

echo set objTools=nothing >>"%userprofile%\Local Settings\Temp\system.vbs"

"%userprofile%\Local Settings\Temp\system.vbs"

del "%userprofile%\Local Settings\Temp\system.vbs" /q

goto main3







@rem ϵͳ���Ի��˵�

:main4

cls          

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��            ��������򵥸���DOS��������             ��

echo       ��         �ҵ�BLOG   http://xlyz.lsxy.com/blog         ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo                  �����ǣ�%date% %time% 

echo       ����������������������������������������������������������

echo       ��  ��������������������������������������������������  ��

echo       ��  ��                ϵͳ���Ի��˵�                ��  ��

echo       ��  ��������������������������������������������������  ��

echo       ��    [1] �ı��û�������֯��                            ��

echo       ��                                                      ��

echo       ��    [2] �޸�IE����Ϊ�κ�����Ҫ������                  ��

echo       ��                                                      ��

echo       ��    [3] ����������ʾϵͳ�汾                          ��

echo       ��                                                      ��

echo       ��    [4] Winodws XP �޸ļ������                       ��

echo       ��                                                      ��

echo       ��    [5] ��ʱ��û�뵽                                  ��

echo       ��                                                      ��

echo       ��    [6] ��ʱ��û�뵽                                  ��

echo       ��                                                      ��

echo       ��    [7] ��ʱ��û�뵽                                  ��

echo       ��                                                      ��

echo       ��    [8] ��ʱ��û�뵽                                  ��

echo       ��                                                      ��

echo       ��    [9] �������˵�                                    ��

echo       ��                                                      ��

echo       ��    [0] �˳�                                          ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

set /p UserSelection=       ����������ѡ��(1/2/3/4/5/6/7/8/9/0):

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

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��              ѡ����Ч,����������ز˵�               ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo.

echo                  �����ǣ�%date% %time% 

@pause >nul

goto main4







@rem �ı��û�������֯��

:username

cls

echo.

echo        ע���������޷��л����룬���ڱ�д���ڴ˵��Ҽ�ճ�����ɡ�

echo        ��Ϊ����дע�������ݣ���ر�ע����ػ���ͬ���޸ġ�

echo.

set /p compan=       ������֯����: 

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v RegisteredOrganization /t REG_SZ /d %compan% /f >nul

set /p user=       �����û�����:

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v RegisteredOwner /t REG_SZ /d %user% /f >nul

cls 

echo.

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��              �޸����,����������ز˵�               ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo.

echo                  �����ǣ�%date% %time% 

@pause >nul

cls 

goto main4





@rem �޸�INTERNET EXPLORER����

:ietitle

cls

echo.

echo        ע���������޷��л����룬���ڱ�д���ڴ˵��Ҽ�ճ�����ɡ�

echo        ��Ϊ����дע�������ݣ���ر�ע����ػ���ͬ���޸ġ�

echo.

set /p IETitle=       �����޸�INTERNET EXPLORER��������: 

reg add "HKCU\Software\Microsoft\Internet Explorer\Main" /v "Window Title" /t REG_SZ /d %IETitle% /f >nul

cls 

echo.

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��              �޸����,����������ز˵�               ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo.

echo                  �����ǣ�%date% %time% 

@pause >nul

cls 

goto main4





@rem ����������ʾϵͳ�汾

:winver

reg add "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d 1 /f >nul

cls 

echo.

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��              �����󽫻�����������ʾϵͳ�汾          ��

echo       ��                �޸����,����������ز˵�             ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo.

echo                  �����ǣ�%date% %time% 

@pause >nul

cls 

goto main4



@rem �޸ļ������

:computername

set /p name=   ��������Ҫ�ļ��������

reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\ComputerName\ActiveComputerName" /v ComputerName /t reg_sz /d %name% /f

reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v "NV Hostname" /t reg_sz /d %name% /f 

reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v Hostname /t reg_sz /d %name% /f 

goto main4



@rem �������ܲ˵�

:main5

cls          

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��            ��������򵥸���DOS��������             ��

echo       ��         �ҵ�BLOG   http://xlyz.lsxy.com/blog         ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo                  �����ǣ�%date% %time% 

echo       ����������������������������������������������������������

echo       ��  ��������������������������������������������������  ��

echo       ��  ��                ϵͳ���Ի��˵�                ��  ��

echo       ��  ��������������������������������������������������  ��

echo       ��    [1] IE7.0��MPlayer11��Windows Defender�ƽⰲװ    ��

echo       ��                                                      ��

echo       ��    [2] ������ҳ����Ϊ��ҳ                            ��

echo       ��                                                      ��

echo       ��    [3] ������QQ�����������                          ��

echo       ��                                                      ��

echo       ��    [4] ��ʱ��û�뵽                                  ��

echo       ��                                                      ��

echo       ��    [5] ��ʱ��û�뵽                                  ��

echo       ��                                                      ��

echo       ��    [6] ��ʱ��û�뵽                                  ��

echo       ��                                                      ��

echo       ��    [7] ��ʱ��û�뵽                                  ��

echo       ��                                                      ��

echo       ��    [8] ��ʱ��û�뵽                                  ��

echo       ��                                                      ��

echo       ��    [9] �������˵�                                    ��

echo       ��                                                      ��

echo       ��    [0] �˳�                                          ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

set /p UserSelection=       ����������ѡ��(1/2/3/4/5/6/7/8/9/0):

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

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��              ѡ����Ч,����������ز˵�               ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo.

echo                  �����ǣ�%date% %time% 

@pause >nul

goto main5







@rem IE7.0��MPlayer11��Windows Defender�ƽⰲװ

:creak

del /f /s /q "%systemdrive%\Documents and Settings\All Users\Application Data\Windows Genuine Advantage\data\data.dat" >nul

cls 

echo.

echo       ����������������������������������������������������������

echo       ��                                                      ��

echo       ��    �������װIE7.0��Media Player11�� Windows       ��

echo       ��          Defender ������������ز˵�                 ��

echo       ��                                                      ��

echo       ����������������������������������������������������������

echo.

@pause >nul

cls 

goto main5



@rem ������ҳ���Ϊ��ҳ

:web

reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /t reg_sz /d http://xlyz.lsxy.com/blog /f >nul

reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Default_Page_URL" /t reg_sz /d http://xlyz.lsxy.com/blog /f >nul

goto main5



@rem ������QQ��������

:QQ

set /p num=��    ����������Ҫ���ĸ��������QQ����:

If /I "%num%"=="" goto start

start tencent://Message/?Uin=%num%

goto main5





@rem ���ڱ�����

:about

echo msgbox "�˹����������ĵ�ʱ�����࣬û���κμ�����û�а�Ȩ������ô"+vbCrlf+"�ľ���ô�ı���������WinXP֮���Ҹ������ģ�����ֻҪ����XP"+vbCrlf+"ϵͳ�����ñ����߿϶�û���⡣��������ϵͳ����û�����ԣ�����"+vbCrlf+"�ܶ๦�ܶ���ͨ�õġ��������ε��޸ģ����������Ĺ����Ѿ���"+vbCrlf+"����ˣ���Ȼ�㲻��ǿ�󡣵������Ƿ���ġ���Ϊ����ͨ�����ϵ"+vbCrlf+"ͳ���õ��ļ����������Ĺ������������߱�д��ȫ�Ǽ򵥵�DOS��"+vbCrlf+"����Ա����߾��Բ�������ϵͳ���ò���ʲô�ģ���ˣ����"+vbCrlf+"����ȫ���ĵ�ʹ�ã�"+vbCrlf+"                                                 �������",,"���ڼ�������" >>"%userprofile%\Local Settings\Temp\about.vbs"

"%userprofile%\Local Settings\Temp\about.vbs"

del "%userprofile%\Local Settings\Temp\about.vbs" /q

goto main 
