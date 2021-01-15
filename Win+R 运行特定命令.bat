下面这段f.bat脚本用了%1%2两个参数
--------------------------------------------
@echo off

::这里的if可以继续扩展
if %1==tq goto tianqi
if %1==d goto dict
if %1==t goto taobao
if %1==b goto baidu
if %1==mp3 goto mp3
if %1==wiki goto wiki
if %1==pic goto image

::默认为google中文搜索
set url=http://www.google.com.hk/search?q=%1+%2
goto end

::-------------此处为if语句的跳转区------------
:tianqi
set url=http://www.google.com.hk/search?q=天气+%2
goto end

:dict
set url=http://dict.cn/%2
goto end

:taobao
set url="http://search.taobao.com/search?ie=utf-8&q="%2
goto end

:baidu
set url="http://www.baidu.com/s?ie=utf-8&f=8&wd="%2"&ct=0"
goto end

:mp3
set url="http://mp3.baidu.com/m?ie=utf-8&f=ms&tn=baidump3&ct=134217728&lf=&rn=&word="%2"&lm=-1"
goto end

:wiki
set url="http://zh.wikipedia.org/wiki/Special:Search?search="%2"&go=Go"
goto end

:image
set url="http://www.google.com.hk/images?q="%2"&hl=zh-CN&safe=strict"
goto end

::--------------最后chrome打开链接-------------
:end
start chrome %url%
