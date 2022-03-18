:gethead Format[Uni/Utf] SaveAs
::      %1  文件头格式 uni/utf，暂时 ::
::          只支持 unicode 与 utf-8  ::
::      %2  设置将文件头保存于何处， ::
::          默认为为 unihead/utfhead ::
::                                   ::
::          注：使用时将切换到 437   ::
::              代码页。             ::
::                                   ::
::            http:\\bbs.bathome.net ::
:::::::::::::::::::::::::::::::::::::::
if /i %1. neq uni. if /i %1. neq utf. echo call :gethead  格式  保存文件头的文件名（可选）&exit/b
setlocal enabledelayedexpansion&set out="%~1head"&(if %2@ neq @ set out=%2)&set hh=^


if /i %~1==uni cd>%out%&for /f "tokens=1,2delims=~ " %%a in ('
cmd/u/cset/p^=绿^<nul^&copy/z "%out%" nul
')do set/p=@%%b!hh!%%a<nul>%~1.$
chcp>nul 437
<nul>%out% (if /i %~1==utf set utf=语豢&set/p=!utf:~1!
if /i %~1==uni set fe=服&set/p=!fe:~1!>>%~1.$&findstr /v $ "%~1.$"&del %~1.$>nul)
if /i %0==:gethead exit/b0