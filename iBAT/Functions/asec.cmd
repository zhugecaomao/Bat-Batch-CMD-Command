::::::::::::::::::::::::::::����ֵ���Ǻ�������::::::::::::::::::::::::::::::
::�÷���call  asec  RetVar=Num                                             ::
::            %1 ָ��һ�������������ڴ洢����ֵ����������������         ::
::            %2 ָ��һ���Ƕ����ڼ���                                     ::
::                                                                        ::
:: ˵����1�������еĽǶȵ�λΪ�ȣ�����ʱ����ʹ��������Ч������            ::
::       2�����������������룬���Ǻ�����ȷ�� 0.0001�������Ǻ���ȡ����   ::
::       3����������ʽ����ʱ���˳�����Ϊ2����ʹ�ò�����ѡ�������㷶Χ���� ::
::          ֵʱ�˳�����Ϊ1���κδ��󶼽����û�ָ���� retvar ��Ϊ Error�� ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set "%~1=Error"&setlocal enabledelayedexpansion
for /f "eol=-delims=-0123456789." %%a in ("%~2")do exit /b1
for /f "tokens=1,2delims=aceinost." %%a in ("%~20")do 2>nul (set num=%%b0000
set /a "m=(%%a1>>31)*2+1,num=~-%%a*10000+(1!num:~,5!+5)/10,1/(num/10000),num=num*m-10000,n=-~-m*90"||exit /b1)
for /f "usebackskip=16" %%a in ("%~f0")do if !num! gtr %%a (
set/an+=m)else for %%a in (!n!)do endlocal&set "%~1=%%a"&exit /b0
0
3
10
19
31
46
65
86
111
139
170
205
243
284
329
377
429
485
545
608
676
748
824
904
989
1079
1174
1274
1379
1490
1606
1728
1857
1992
2134
2283
2440
2605
2778
2960
3151
3352
3563
3786
4020
4267
4527
4802
5092
5398
5721
6064
6427
6812
7221
7655
8118
8612
9139
9703
10308
10957
11657
12412
13228
14114
15078
16131
17285
18555
19957
21515
23255
25209
27420
29939
32837
36202
40159
44874
50589
57655
66613
78337
94334
117455
153804
219256
372016
1135930
Error