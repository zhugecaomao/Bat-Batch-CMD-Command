echo off
:loop
cls
echo ������ͼ���ļ���س���
set /p imagefile=
echo ������rar�ļ���س���
set /p rarfile=

copy /b %imagefile% + %rarfile% %rarfile%.jpg

echo OK!�Ѿ���%rarfile%�ϲ���%imagefile%��
echo �ϲ�����ļ�Ϊ��%rarfile%.jpg

::del /f /s /q %imagefile%
::copy temp.jpg %imagefile:~0,-4%jpg
::del /f /s /q temp.jpg
goto loop
