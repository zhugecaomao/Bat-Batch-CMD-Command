echo off
:loop
cls
echo 请拖入图像文件后回车：
set /p imagefile=
echo 请拖入rar文件后回车：
set /p rarfile=

copy /b %imagefile% + %rarfile% %rarfile%.jpg

echo OK!已经将%rarfile%合并到%imagefile%。
echo 合并后的文件为：%rarfile%.jpg

::del /f /s /q %imagefile%
::copy temp.jpg %imagefile:~0,-4%jpg
::del /f /s /q temp.jpg
goto loop
