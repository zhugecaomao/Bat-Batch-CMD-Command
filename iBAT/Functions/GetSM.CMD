:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:GetSM sm
::
:: ���ߣ�Ritchie Lawrence, 2003-09-22. �汾 1.0
::
:: ���ܣ���ȡ���������������롣���ʧ�ܣ������� 0.0.0.0
::       ������ NT4/2000/XP/2003.
:: 
:: ������%1 �ñ������ڽ����������루���õ��ã�
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
setlocal ENABLEEXTENSIONS & set "i=0.0.0.0" & set "m=0.0.0.0" & set "j="
for /f "tokens=4" %%a in ('route print^|findstr 0.0.0.0.*0.0.0.0') do (
  if not defined j (for %%b in (%%a) do set "i=%%b" & set j=1)) & set "k="
for /f "skip=1 tokens=2-4" %%a in ('route print^|findstr/b /c:" "') do (
  for %%e in (%%a) do set "x=%%e" & for %%f in (%%b) do set "y=%%f"
  for %%g in (%%c) do set "z=%%g"
  for /f "tokens=1-3" %%a in ('echo/%%x%% %%y%% %%z%%') do (
    if not defined k if "%%c"=="%i%" if "%%b"=="%i%" set k=1 & set m=%%a))
endlocal & set "%1=%m%" & goto :EOF
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::  