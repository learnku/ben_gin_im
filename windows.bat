:: Golang 在 Windows 下交叉编译 Windows 运行程序
:: 设置变量
set PathName=release
set AppName=chat.exe
:: 删除目录
rd /s/q %PathName%
:: 创建目录
md %PathName%
:: windows平台打包命令
go build -o %AppName%
:: 移动 or 复制文件
MOVE %AppName% %PathName%\
COPY favicon.ico %PathName%\favicon.ico
:: 复制静态文件夹
XCOPY asset\*.* %PathName%\asset\  /s /e
XCOPY view\*.* %PathName%\view\  /s /e