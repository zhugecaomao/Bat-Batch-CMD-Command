@echo off
set>tmp
::设定
set "墙=█"
set "路=　"
set 演示=rem
set /a 行=40,列=40
rem 参数设置初始化，"演示=rem" 代表不进行实时绘制

set /a 屏宽=列*2+1,屏高=行+3,endline=行*列-列,now=列+1
mode con: lines=%屏高% cols=%屏宽%
echo %time%
rem 改变窗口尺寸及显示时间

set "fail= "
rem 必要的变量初始化

setlocal enabledelayedexpansion
for /l %%a in (1 1 !列!) do set $=!$!!墙!

(
for /f "delims==" %%a in (tmp) do set %%a=
del tmp>nul
for %%b in (行 列 屏高 屏宽 墙 路 endline) do set %%b=
rem 清除作为常数的多余变量，以下仅以 %str% 的形式取值

for /l %%a in (3 1 %行%) do set $=!$!%$%
set $=%$%%路%%路%!$:~,-2!
rem 生成框架，将整个迷宫存储于变量 $

for /l %%a in () do (

        set /a "ra=!random!%%4,ra=now+(^!~-ra*%列%-^!ra*%列%-ra/2+ra/3*2),test=ra%% %列%*(ra/%列%)*(-~ra%% %列%)*^!(ra/(%endline%))"
        rem 随机取得延伸方向，并检测其是否在边界

        for %%Z in (!ra!) do (
                if "!fail: %%Z =!"=="!fail!" (
                        set "fail=!fail!%%Z "
                        if !test! neq 0 (

                                set tmp=!$:~%%Z!!$:~,%%Z!
                                set test=!tmp:~1,1!!tmp:~-1,1!!tmp:~-%列%,1!!tmp:~%列%,1!
                                rem 先将探测指针后与探测指针前的变量内容交换，可理解为将指针位置的坐标轴暂时设为原点
                                rem 便于以 c 语言指针的方式进行取值而避开对前后左右四个偏移量的计算

                                if "!test:%路%=!"=="%墙%%墙%%墙%" (
                                        set $=!tmp:~-%%Z!%路%!tmp:~1,-%%Z!
                                        set now=!ra!
                                        set ok=!now! !ok!
                                        set "fail= "
                                        rem 当发现一个正确的目标点时，抵达该点，清空失败记录
                                        rem 并修改该点的状态为 %路%，同时记录在过往路线中
                                        %演示% echo !$!%$%&echo;
                                )
                        )
                )
        )
        for /f "tokens=4" %%b in ("!fail!") do (
                rem 当 !fail! 中的失败记录数达到四个时触发此循环
                if defined ok (

                        for /f "tokens=1*" %%c in ("!ok!") do set now=%%c&set ok=%%d
                        set "fail= "
                        rem 按照成功记录回退，!ok! 中始终只记录一条路线，记录被清空时认为迷宫绘制完成

                ) else (
                        set /a "ra=!random!%%(%行%*2+%列%*2-6),ra+=-~ra/%列%,test=ra/%列%,tmp=ra%%%列%,tmp=^!(test)*tmp+^!(test-1)*((tmp+1)*%列%-1)+^!(test-2)*(%endline%+tmp-1)+^!(test-3)*(tmp+1)*%列%"
                        rem 随机设置终点位置

                        for %%Z in (!tmp!) do (
                                set tmp=!$:~%%Z!!$:~,%%Z!
                                set "test=!tmp:~1,1!!tmp:~-1,1!!tmp:~-%列%,1!!tmp:~%列%,1!"
                                rem 获取上下左右的状态

                                if "!test:%墙%=!"=="%路%" (
                                        echo !tmp:~-%%Z!%路%!tmp:~1,-%%Z!
                                        echo !time!
                                        pause>nul&exit
                                        rem 测试若该点可用并与路相接则设为终点并打印迷宫
                                )
                        )
                )
        )
)
)