::::::::::::::::::::::::get_tab：tab获取通用批处理函数::::::::::::::::::::::::::::
::::::用于高效解决大部分论坛和贴吧自动将tab转为空格导致代码不通用的函数方案:::::::
::::::::::由 batman 首发于 http://bbs.bathome.net/thread-12054-1-8.html:::::::::::

:get_tab retvar
for /f "skip=39 delims=T" %%a in (%windir%\system32\MsDtc\Trace\msdtcvtr.bat) do if not defined %1 set "%1=%%a
call,set "%1=%%%1:~,-1%%"
