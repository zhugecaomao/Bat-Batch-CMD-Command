:gethead Format[Uni/Utf] SaveAs
::      %1  �ļ�ͷ��ʽ uni/utf����ʱ ::
::          ֻ֧�� unicode �� utf-8  ::
::      %2  ���ý��ļ�ͷ�����ںδ��� ::
::          Ĭ��ΪΪ unihead/utfhead ::
::                                   ::
::          ע��ʹ��ʱ���л��� 437   ::
::              ����ҳ��             ::
::                                   ::
::            http:\\bbs.bathome.net ::
:::::::::::::::::::::::::::::::::::::::
if /i %1. neq uni. if /i %1. neq utf. echo call :gethead  ��ʽ  �����ļ�ͷ���ļ�������ѡ��&exit/b
setlocal enabledelayedexpansion&set out="%~1head"&(if %2@ neq @ set out=%2)&set hh=^


if /i %~1==uni cd>%out%&for /f "tokens=1,2delims=~ " %%a in ('
cmd/u/cset/p^=��^<nul^&copy/z "%out%" nul
')do set/p=@%%b!hh!%%a<nul>%~1.$
chcp>nul 437
<nul>%out% (if /i %~1==utf set utf=�﻿&set/p=!utf:~1!
if /i %~1==uni set fe=��&set/p=!fe:~1!>>%~1.$&findstr /v $ "%~1.$"&del %~1.$>nul)
if /i %0==:gethead exit/b0