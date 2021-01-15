n=msgbox("[是]安装,[否]卸载,请选择:",vbyesno+4096,"系统提示")
if n=vbyes then
createobject("wscript.shell").run "安装用批处理.bat"
else
createobject("wscript.shell").run "卸载用批处理.bat"
end if
