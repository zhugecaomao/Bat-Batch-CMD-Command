:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:Sleep %secs%
::
:: ���ߣ�Ritchie Lawrence, 2003-09-16. �汾 1.0
::
:: ���ܣ����������ļ�����ʱָ��������
::       ������ NT4/2000/XP/2003.
:: 
:: ������%1 ��ʱ����������ֵ���ã�
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
setlocal ENABLEEXTENSIONS & set /a n=%1+1
ping -n %n% 127.0.0.1 >nul
endlocal & goto :EOF
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::  