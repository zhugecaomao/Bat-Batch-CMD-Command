@if %1.==. if not %prompt:~-4%==$s$h (cmd /s/c"prompt %prompt%$s$h&%0/?")
@echo off
if %1.==.   exit/b
if %1.==/?. goto:usage
if %1==/1 goto:attr1 
if %1==/2 goto:attr2
if %1==/4 goto:attr4
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:_colstr [^<colorcode^>:"<color str>"^|"<common str>"^|^<escape Char^>];... 
(if %1.==. exit/b)&setlocal enabledelayedexpansion&pushd %tmp%
for /f "tokens=1* delims=:" %%a in ("%~1")do (
  if %%a:%%b.==%%a:"%%~b". (set col=%%a
    for %%z in ("LBlue=9";"LGreen=A";"LAqua=B";"LRed=C";"LPurple=D";
                "LYellow=E";"LWhite=F";"Black=0";"Blue=1";"Green=2";
                "Aqua=3";"Red=4";"Purple=5";"Yellow=6";"White=7";"Gray=8";
               )do set col=!col:%%~z!
      if exist "%%~b?" del/a/q "%%~b?"2>nul
      set/p= <nul>"%%~b"2>nul&findstr/a:!col! .* "%%~b?"2>nul 3>&2
    ) else if %1==\n (echo.
    ) else if %1==\b (set/p=<nul
    ) else if %1==\q (set/p=""^"<nul
    ) else if %1==\t (set/p= <nul &rem ע��=���治�ǿո����Ʊ��
    ) else (set/p"=%~1"<nul)
)&(if %2. neq . (shift&endlocal&goto:_colstr))&exit/b
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:usage
echo.  colstr V1.1 code By plp626 On 09-5-30
echo.usage:
echo.  %~n0 [^<colorcode^>:"<color str>"^|"<common str>"^|^<escape Char^>];...
echo.
echo.^<colorcode^>:     
echo.       �ο�findstr /?��a������������ɫ����16�������֣�
echo.       �������ɫ������������16������ɫ���������ǵ�Ч��
echo.       Black=0   Blue=1   Green=2   Aqua=3   Red=4   Purple=5 
echo        Yellow=6   White=7   Gray=8   LBlue=9   LGreen=A  
echo        LAqua=B   LRed=C   LPurple=D   LYellow=E   LWhite=F  
echo.^<color string^>:
echo.       ���˷Ƿ��ļ�����������ַ�
echo.       ���⣬�������Ǵ����ո񡱡�����.�� �����ԡ��ո񡱡���.����β 
echo.       �������",;=^"����֮һ��ǰ�����^^ת��(��������)
echo.       ������о�̾��!��Ҫ����ǰ�����6��^^ת��(��������)     
echo.^<common string^>:
echo.       ����"��������ַ�, ע��Ծ�̾�ŵĴ���Ҫ��ǰ�����^
echo.^<escape char^>:
echo.   "\q"(˫����)��"\t"(�Ʊ��)��"\b"(�˸�)��"\n"(����)
cmd/c %~n0 c:"[ע��]";"����ַ���ʱ��";\q;c:"^;";\q;"����";\n
echo.exapmple:&echo    �������¼��룺
echo.   %~n0  "��ӭ��email:"; graygreen:"plp626@163.com"; "  ����^!";\n;
echo. 
echo ����ʾ��&echo.
cmd/c %~n0 "��ӭ��email:  "; graylgreen:"plp626@163.com"; "  ����^!";\n;\n;
echo.���� "%~n0/1" �鿴һλ���ֵ���ɫ����Ч��
echo.���� "%~n0/2" �鿴��λ���ֵ���ɫ����Ч��
echo.���� "%~n0/4" �鿴��λ���ֵ���ɫ����Ч��&exit/b
:attr1
for %%b in (LBlue LGreen LAqua LRed LPurple LYellow LWhite Black : 
            Blue Green Aqua Red Purple Yellow White Gray
           )do if %%b==: (echo.) else cmd/c %~n0 "  ";%%b:"%%b"
echo\&&exit/b
:attr2
title %cmdcmdline%
setlocal&set attr=0 1 2 3 4 5 6 7 8 9 a b c d e f
for %%a in (%attr%)do echo.&for %%b in (%attr%)do cmd/c %~n0 %%a%%b:"[%%a%%b]"
echo.&endlocal&exit/b
:attr4
echo     ��attrΪ3-4λʱ,����λ�����ò��䣬����λ�������Ӧ�ı�Ե�ߣ�
cmd/c %~n0 \n;"     0000 =  "&for %%b in (1 2 3 : 4 5 6 7 : 8 9 A B : C D E F)do (
    if %%b==: (echo\&echo\) else  cmd/c %~n0 "     0%%b00 = "; 0%%b00:"0";)
echo.&exit/b