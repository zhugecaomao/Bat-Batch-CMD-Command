:: etime -- ��%1--%2 ��ʱ��ʱ������24Сʱ�ڿɵ���֮��
:: ԭ����http://bbs.bathome.net/viewthread.php?tid=4701
:etime <beginTimeVar> <endTimeVar> <retVar> // code by plp626
if "!OS!" neq "%OS%" (echo %0 ��Ҫ�ٿ��������ӳٺ����&goto:eof)
Set/a "%3=(!%2:~,2!-!%1:~,2!)*360000+(1!%2:~3,2!-1!%1:~3,2!)*6000+1!%2:~-5,2!!%2:~-2!-1!%1:~-5,2!!%1:~-2!,%3-=8640000*(%3>>31)"&goto:eof
