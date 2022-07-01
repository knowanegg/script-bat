::使用ping扫描内网c段
::使用方法: .\ip_pingscan_with_param 192.168.1
::ping通的主机放在当前执行目录的ip_success.txt
::注：
::  ping /n 1 /w 40 表示只ping一次,丢弃40ms以上的请求，保证扫描结果为内网
::  &&作用是前面语句执行成功后才执行后面的语句

@for /l %%i in (1,1,255) do ping /n 1 /w 40 %1.%%i && echo %1.%%i>>ip_success.txt