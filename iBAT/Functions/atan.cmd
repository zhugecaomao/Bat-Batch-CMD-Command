::::::::::::::::::::::::::::任意值三角函数计算::::::::::::::::::::::::::::::
::用法：call  atan  RetVar=Num                                             ::
::            %1 指定一个变量名，用于存储返回值，运算结果四舍五入         ::
::            %2 指定一个角度用于计算                                     ::
::                                                                        ::
:: 说明：1、函数中的角度单位为度，计算时允许使用任意有效度数；            ::
::       2、计算结果均四舍五入，三角函数精确到 0.0001，反三角函数取整；   ::
::       3、当参数格式不对时将退出码设为2，当使用不在所选函数计算范围的数 ::
::          值时退出码设为1，任何错误都将把用户指定的 retvar 设为 Error。 ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set "%~1=Error"&setlocal enabledelayedexpansion
for /f "eol=-delims=-0123456789." %%a in ("%~2")do exit /b1
for /f "tokens=1,2delims=aceinost." %%a in ("%~20")do 2>nul (set num=%%b0000
set /a "m=(%%a1>>31)*2+1,num=~-%%a*10000+(1!num:~,5!+5)/10,n=-~-m*90"||exit /b1)
for /f "usebackskip=16" %%a in ("%~f0") do if %num% gtr %%a (
set/an+=m)else for %%a in (!n!)do endlocal&set "%~1=%%a"&exit /b0
87
262
437
612
787
963
1139
1317
1495
1673
1853
2035
2217
2401
2586
2773
2962
3153
3346
3541
3739
3939
4142
4348
4557
4770
4986
5206
5430
5658
5890
6128
6371
6619
6873
7133
7400
7673
7954
8243
8541
8847
9163
9490
9827
10176
10538
10913
11303
11708
12131
12572
13032
13514
14019
14550
15108
15697
16319
16977
17675
18418
19210
20057
20965
21943
22998
24142
25386
26746
28239
29887
31716
33759
36059
38667
41653
45107
49152
53955
59758
66912
75958
87769
103854
127062
163499
229038
381885
1145887
Error
