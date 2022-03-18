::::::::::::::::::::::::::::weeks 日期转星期函数:::::::::::::::::::::::::::::
:: 用法：                                                                  ::
::  call :weeks Date(YYYYMMDD) retvar[.]                                   ::
::        %1  Date(YYYYMMDD)   要计算的日期，不判断是否合法格式            ::
::        %2  retvar[.[eval]]  用于保存星期（1~7）的变量名，变量名不允许含 ::
::                             有=、/、"，否则出错。如要将周日的对应数值由 ::
::                             默认 7 变为 0，请在 retar 后加上一个点，最  ::
::                             后一个点前的内容为 retvar 变量名，该点之后  ::
::                             的内容即为算式。在算式中，? 代表原计算结果，::
::                             可使用任何合法算式，但若引用 f 与 m 变量可  ::
::                             能得出错误结果。                            ::
::                                                                         ::
:: 实例（外部调用）：                                                      ::
::  call weeks 20120108 w             求 20120101 的星期数，保存在 %w% 中  ::
::  call weeks 20120108 w.            将周日设为 0，求星期数，保存在 %w%   ::
::  call weeks 20111215 w.?+4         求 20111215 的星期数，将其加 4 保存  ::
::  call weeks 20111215 w.(?+5)%%%%7  求 20111215 5 天后的星期数           ::
::                                                                         ::
::        http:\\bbs.bathome.net  批处理之家  http:\\www.bathome.net       ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:weeks Date(YYYYMMDD) retvar   ###### 公式算法
setlocal disabledelayedexpansion&set "date=%~1"&if "%~n2"=="%~2" (set f=1)else set f=
for /f "tokens=2delims=." %%a in ("%~2") do set ?=,"?=%%a"
2>nul set /a m+=!((m=1%date:~4,2%-100)/3)*12,?=(7%date:~6,2%+2*m+3*(m+1)/5+(y=%date:~,4%-m/13)+y/4-y/100+y/400+!f)%%7+f%?%
endlocal&set "%~n2=%?%"2>nul||echo %?%&if /i %0==:weeks exit/b0
