@echo off 
start mshta vbscript:msgbox("是这种按钮吗?",vbOkCancel,"提示")(window.close)&&pause
start mshta vbscript:msgbox("是这种按钮吗?",0,"提示")(window.close)&&pause
start mshta vbscript:msgbox("是这种按钮吗?",1,"提示")(window.close)&&pause
pause