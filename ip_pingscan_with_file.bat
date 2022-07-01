::使用ping扫描内网
::使用方法: .\ip_pingscan_with_file
::将需要扫描的主机列表放在当前目录的list.txt中，成功结果输出在当前执行目录的ip_success.txt
::注：
::  ping /n 1 /w 40 表示只ping一次,丢弃40ms以上的请求，保证扫描结果为内网
::  &&作用是前面语句执行成功后才执行后面的语句

for /f %%i in (list.txt) do ping /n 1 /w 40 %%i && echo %%i>>ip_success.txt
