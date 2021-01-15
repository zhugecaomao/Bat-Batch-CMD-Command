@reg delete "HKEY_CURRENT_USER\Software\Microsoft\Internet EXPlorer\Main" /v "Start Page" /f 
@reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /d "http://www.jlu.edu.cn/newjlu/index60.php" /f 
