:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:GetMAC mac
::
:: ���ߣ�Ritchie Lawrence, 2003-09-24. �汾 1.0
::
:: ���ܣ��������� MAC ��ַ����ʽΪXX-XX-XX-XX-XX-XX��
::       ���ʧ�ܣ������� 00-00-00-00-00-00
::       ������ NT4/2000/XP/2003.
:: 
:: ������%1 �ñ������ڽ��� MAC ��ַ�����õ��ã�
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
setlocal ENABLEEXTENSIONS&set "m=00-00-00-00-00-00"&set "i="&set "j="&set "n=0"
for /f "tokens=3" %%a in ('route print^|find "0.0.0.0"') do if %%a lss a set "i=%%a"&set "j=1"&set "j="
if not defined i endlocal & set "%1=%m%" & goto :EOF
for /f "tokens=2 delims=:" %%a in ('
ipconfig/all^|findstr /r "Physical ���� Gateway ����"') do (
if "%%a"==" %i%" (call set m=%%last%%)else set last=%%a)
endlocal & set "%1=%m%" & goto :EOF
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::  