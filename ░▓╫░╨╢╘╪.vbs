n=msgbox("[��]��װ,[��]ж��,��ѡ��:",vbyesno+4096,"ϵͳ��ʾ")
if n=vbyes then
createobject("wscript.shell").run "��װ��������.bat"
else
createobject("wscript.shell").run "ж����������.bat"
end if