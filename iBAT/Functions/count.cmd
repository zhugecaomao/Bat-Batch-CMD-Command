:::::::::::::::::::::::::ͳ�ƹؼ��ʳ��ִ���::::::::::::::::::::::::::::::::
:: call :Count  [retvar=][/c: | /g:]Keys  [:: | /f:]Str/File  [retvar]   ::
::                                                                       ::
::       %1    "Key1..KeyN"       ��Ҫ�����Ĺؼ��ʣ����ִ�Сд�����ؼ��� ::
::                            ���ܺ��� * ~ = !������ؼ����Կո������� ::
::                            ����� \ ��ת�塣                          ::
::                   /c:Key       ʹ��ָ���ַ�����Ϊ���������ַ��������� ::
::                            �����пո�ת�壬�� %1 ��Ϊһ���ؼ��ʿ����� ::
::                  /g:File       ������� /g ���أ����ָ�����ļ������ ::
::                            ���ַ�����������ָ��һ��Ŀ���ļ���         ::
::                 retvar=%1      �����÷����� retvar= д�� %1 ֮ǰʱ��  ::
::                            �Ὣ�����Ľ������ָ���������˴�ָ���ı��� ::
::                            �������� % 3���趨�ı������������� %1 ���� ::
::                            ���﷨���ͻ��                             ::
::       %2        Str/File       ָ����Ҫ����ؼ����������ַ�������ָ�� ::
::                            ����������ͨ���ļ��������·����           ::
::                    ::Str      ���� :: Ϊǰ׺ʱ��ָ������Ϊ�ַ�������  ::
::                            �������ж��Ƿ�Ϊ�ļ���Ϊ�׵� :: ��Ч�󽫱� ::
::                            ȥ����������ż�����                       ::
::                  /f:File      ������� /f ���أ�����Ϊ��������ָ��  ::
::                            ���ļ���ȡ�ļ��б�                       ::
::       %3          retvar       �趨һ�������������ڱ�������ı������� ::
::                            ��������ֱ����������                     ::
::                                                                       ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                                                                       ::
::           �����㷨���ڱ����滻�������޷��԰��� * ~ = ! �Ĺؼ��ʽ���   ::
::  ��   ���������⣬��Ϊÿ���滻ʱ�����ؼ����滻Ϊ�����ַ���ȣ����Ե�  ::
::       ���ַ���+(���г��ֹؼ��ʵ��ܳ���-���ֹؼ��ʵĴ���*2)>8189 ʱ��  ::
::  ��   ����                                                          ::
::           /g �� /f ���ض���֧��ͨ���ļ���������ʹ������ʱ��ָ��һ��   ::
::  ˵   ȷ����Ч���ļ�����                                              ::
::           �����﷨ģ�� findstr��������⣬�����������ơ������� \ ת   ::
::  ��   ��ո�֮��δ�ṩ����֧�֡�                                      ::
::                                     ������֮�� bbs.bathome.net  Crlf  ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:Count  [retvar=][/c: | /g:]Keys  [:: | /f:]Str/File  [retvar]
setlocal disabledelayedexpansion&set ret=%3&set c=&set ff=&set cf=.&set s=%*
for /f "delims==" %%a in ("%s:"=%")do if %%a==%1 set ret=%1&shift
set s=/?&set "g=%~1"&set "f=%~2"&setlocal enabledelayedexpansion&set gf="
for %%a in (g c) do if !cf!==. if /i !g:~^,3!==/%%a: set g=!g:~3!&set cf=&set %%af=
for /f "tokens=2delims=*~=^!" %%a in (%gf%!g!%gf%)do echo �ؼ��ʲ��ܺ��� * ~ = ^!&exit/b1
if %~d2==:: (set f=!f:~2!)else set s=&if /i !f:~^,3!==/f: set f=!f:~3!&set ff=/f "usebackeol=:delims="
if "!g:~,1!!g:~-1!"=="""" set g=!g:~1,-1!
dir !s! /a-d "!f!">nul 2>nul&&(set s=useback)||set s=&&set ff=/f "delims="&set c=^


for %%a in ("!c!")do (for %%b in (g f)do if !%%b!.==. echo call :Count Key String/File&exit/b1
if !cf!==. set g=!g:\ =\~!&set g=!g: =%%~a!&set g=!g:\~= !
(for %%b in (cf gf ff)do set %%b=)&setlocal disabledelayedexpansion
for %ff% %%b in ("%f:"=%")do for /f "%s%eol=��delims=" %%c in ("%%~b")do (echo %%c>>tmp.txt
set s=%%c&setlocal enabledelayedexpansion
for /f "eol==delims=" %%d in (%gf%!g!%gf%)do set "s=[!s:%%d=%%~a]!"
(for /f eol^=�� %%d in ("!s!")do set/ac+=1)&for /f %%d in ("!c!")do endlocal&set/ac=%%d-1))
endlocal&endlocal&endlocal&2>nul set %ret%=%c%||echo;%c%&if /i %0==:count exit/b0