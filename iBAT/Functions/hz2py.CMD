:::::::::::::::::::::::::::::::::����תƴ��:::::::::::::::::::::::::::::::::
:: ʹ���÷��� call hz2py InputString   ��������Ϊ�ⲿ�������ã�������Ƕ�� ::
::              %1  InputString  ����Ҫת�����ַ�����Ϊ��߼����ԣ�       ::
::                               ��ռ�������� %hz2py% ������              ::
:: ��Ϊ������ʹ�����ú���ƴ�����ձ��������뱣�ֺ����ű�������Ϊ hz2py.cmd ::
:: ��ȷ������������������Ϊ�������ġ���ƴ�����򣬷��򽫳����������ֶ����� ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:hz2py Input  ######   http://bbs.bathome.net   Crlf
setlocal&set "hz2py=%~1"&setlocal enabledelayedexpansion&set str=
if !hz2py:~1599!@ neq @ echo Error:��������ȷ&exit/b2
for %%a in (߹ a �� ai �� an �� ang �� ao �� ba �� bai �� ban
�� bang �� bao �� bei �� ben �� beng �� bi �� bian �� biao �� bie �� bin �� bing �� bo
�� bu �� ca �� cai �� can �� cang �� cao �� ce � cen �� ceng �� cha �� chai �� chan ��
chang �� chao �� che �� chen �� cheng �� chi �� chong �� chou �� chu �� chuai �� chuan
�� chuang �� chui �� chun � chuo �� ci �� cong �� cou �� cu �� cuan �� cui �� cun �� cuo
�� da �� dai �� dan �� dang �� dao �� de �� deng �� di �� dia �� dian �� diao �� die ��
ding �� diu �� dong �� dou �� du �� duan �� dui �� dun �� duo �� e �� ei �� en �� er ��
fa �� fan �� fang �� fei �� fen �� feng �� fo � fou �� fu �� ga �� gai �� gan �� gang ��
gao �� ge �� gei �� gen �� geng �� gong �� gou �� gu �� gua �� guai �� guan �� guang
�� gui �� gun �� guo �� ha �� hai �� han �� hang �� hao �� he �� hei �� hen �� heng ��
hong �� hou �� hu �� hua �� huai �� huan �� huang �� hui �� hun �� huo �� ji �� jia ��
jian �� jiang �� jiao �� jie �� jin �� jing �� jiong �� jiu �� ju �� juan �� jv �� jun �� ka ��
kai �� kan �� kang �� kao �� ke �� ken �� keng �� kong �� kou �� ku �� kua �� kuai ��
kuan �� kuang �� kui �� kun �� kuo �� la �� lai �� lan �� lang �� lao �� le �� lei �� leng
�� li �� lian �� liang �� liao �� lie �� lin �� ling �� liu �� long ¦ lou ¬ lu �� luan �� lun
�� luo ¿ lv �� lve �� ma �� mai �� man â mang è mao ô me õ mei �� men �� meng
�� mi �� mian �� miao �� mie �� min �� ming �� miu �� mo Ĳ mou ķ mu �� na �� nai
�� nan �� nang �� nao ګ ne �� nei �� nen �� neng �� ni �� nian �� niang �� niao �� nie
�� nin �� ning ţ niu Ũ nong �� nou ū nu ů nuan Ų nuo �� nve Ů nv �� o ŷ ou ſ pa
�� pai �� pan �� pang �� pao �� pei �� pen �� peng �� pi ƫ pian Ư piao Ƴ pie ƴ pin ƹ
ping �� po �� pou �� pu �� qi �� qia Ǥ qian ǹ qiang �� qiao �� qie �� qin �� qing ��
qiong �� qiu �� qu Ȧ quan Ȳ qv ȹ qun Ȼ ran ȿ rang �� rao �� re �� ren �� reng �� ri
�� rong �� rou �� ru �� ruan �� rui �� run �� ruo �� sa �� sai �� san ɣ sang ɦ sao ɫ se
ɭ sen ɮ seng ɰ sha ɸ shai ɻ shan �� shang �� shao �� she �� shen �� sheng ʧ shi
�� shou �� shu ˢ shua ˥ shuai ˩ shuan ˫ shuang ˭ shui ˱ shun ˵ shuo ˹ si ��
song �� sou �� su �� suan �� sui �� sun �� suo �� ta ̥ tai ̮ tan �� tang �� tao ߯ te
�� teng �� ti �� tian �� tiao �� tie �� ting ͨ tong ͵ tou ͹ tu �� tuan �� tui �� tun ر
tuo �� wa �� wai �� wan �� wang �� wei �� wen �� weng �� wo �� wu �� xi Ϻ xia ��
xian �� xiang �� xiao Щ xie о xin �� xing �� xiong �� xiu �� xu �� xuan ѥ xv ѫ xun ѹ
ya �� yan �� yang �� yao Ҭ ye һ yi �� yin Ӣ ying Ӵ yo Ӷ yong �� you �� yu ԧ yuan
Ի yv �� yun �� za �� zai �� zan �� zang �� zao �� ze �� zei �� zen �� zeng �� zha ժ
zhai ձ zhan �� zhang �� zhao �� zhe �� zhen �� zheng ֥ zhi �� zhong �� zhou �� zhu 
ץ zhua ק zhuai ר zhuan ׯ zhuang ׵ zhui ׻ zhun ׾ zhuo �� zi �� zong �� zou �� zu
�� zuan �� zui �� zun �� zuo )do set str=!str! %%a
for /l %%a in (0 1 1599)do (if !hz2py:~%%a!@==@ echo;!var!&exit /b 0
(set py=&if !hz2py:~%%a! geq ߹ if !hz2py:~%%a! leq �� (
set str=%str%&set py=zuo&for /l %%b in (1 1 400)do (for /f "tokens=1,2,3*" %%c in (
"!str!")do (if !hz2py:~%%a! geq %%c if !hz2py:~%%a! lss %%e set py=%%d&set str=
if defined str set str=%%e %%f)))&set var=!var! !py!
)&if not defined py set "var=!var!!hz2py:~%%a,1!")
if /i %0==:hz2py endlocal&endlocal&exit/b0
rem ����ƴ��������
