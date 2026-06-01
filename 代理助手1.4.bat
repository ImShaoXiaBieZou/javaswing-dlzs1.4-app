@echo off
:: 第一步：锁定当前目录，不管你把文件夹丢到哪都能运行
set "BASE_DIR=%~dp0"
cd /d "%BASE_DIR%"

:: 第二步：指定你放进来的那个 jdk 路径（如果文件夹叫 jdk1.8 就改成 jdk1.8）
set "MY_JAVA=.\ms-21.0.10\bin\javaw.exe"

:: 第三步：启动你的程序
:: -Dfile.encoding=utf-8 是为了防止你解析南瑞文件时中文乱码
start "" "%MY_JAVA%" -Dfile.encoding=utf-8 -jar "java-onefour-server.jar"

exit