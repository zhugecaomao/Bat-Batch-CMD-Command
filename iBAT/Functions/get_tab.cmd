::::::::::::::::::::::::get_tab��tab��ȡͨ����������::::::::::::::::::::::::::::
::::::���ڸ�Ч����󲿷���̳�������Զ���tabתΪ�ո��´��벻ͨ�õĺ�������:::::::
::::::::::�� batman �׷��� http://bbs.bathome.net/thread-12054-1-8.html:::::::::::

:get_tab retvar
for /f "skip=39 delims=T" %%a in (%windir%\system32\MsDtc\Trace\msdtcvtr.bat) do if not defined %1 set "%1=%%a
call,set "%1=%%%1:~,-1%%"
