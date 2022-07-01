::使用ipc扫描内网c段
::使用方法: .\ip_ipcscan_with_param 192.168.1
::ping通的主机放在当前执行目录的ipc_success.txt
::注:
::  DOMAIN为域，administrator为用户名，password为密码
::  &&作用是前面语句执行成功后才执行后面的语句
::  !如果目标机器已经连接上，那么结果不会显示在ipc_success.txt中，建议在机器上使用net use查看结果
::  !如果机器不存在或未开启ipc，超时时间会达到十几秒

@for /l %%i in (1,1,255) do net use \\%1.%%i "password" /user:DOMAIN\administrator && echo %1.%%i>>ipc_success.txt
