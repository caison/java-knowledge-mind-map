

## author: 陈彩华(caison@aliyun.com)
## create_time: 2019-02-07
## ablout: 系统基本运行情况监控
echo 
echo 
echo -e "\033[33m--------------------------------计算负载------------------------------------------\033[0m"

echo -e "\033[34m[CPU]\033[0m"
iostat -c | awk 'NR==3 || NR==4 {print}'
echo -e "\033[32muser-用户空间CPU时间占比，system-系统空间CPU时间占比\033[0m"
echo -e "\033[32miowait-CPU io等待时间占比，idle-CPU空闲时间占比\033[0m"

echo 
echo -e "\033[34m[进程数]\033[0m"
ps -ef|wc -l


echo 
 

echo -e "\033[33m--------------------------------存储负载------------------------------------------\033[0m"
echo -e "\033[34m[内存空间使用]\033[0m"
free -m
echo -e "\033[32m单位-Mb，Mem-物理内存，Swap-虚拟内存\033[0m"
echo -e "\033[32m单位-Mb，total-总内存，available-可用内存\033[0m"
echo 
echo -e "\033[34m[磁盘空间使用]\033[0m"
df -h

echo 
echo -e "\033[34m[磁盘吞吐率]\033[0m"
iostat -d -m | awk 'NR>2{print}'| awk '/./ {print}' 
echo -e "\033[32m单位-Mb，tps-每秒io次数，MB_read/s-每秒读的数据量，MB_wrtn/s-每秒写的数据量\033[0m"
echo

echo -e "\033[34m[文件句柄数]\033[0m"
lsof|awk '{print $2}'|wc -l
echo

echo -e "\033[33m--------------------------------网络负载------------------------------------------\033[0m"
echo -e "\033[34m[TCP连接数]\033[0m"
echo $(netstat -nat|wc -l)
echo

echo -e "\033[34m[端口连接状态]\033[0m"
netstat -na | awk '/^tcp/ {++S[$NF]} END {for(a in S) print a, S[a]}'
echo -e "\033[32mLISTEN-监听状态\033[0m"
echo -e "\033[32mCLOSE_WAIT-对方主动关闭连接或者网络异常导致连接中断-状态\033[0m"
echo -e "\033[32mESTABLISHED-正常数据传输状态\033[0m"
echo -e "\033[32mTIME_WAIT-处理完毕等待超时结束状态\033[0m"
echo

echo -e "\033[34m[网卡流量]\033[0m"
sar -n DEV 1 3 |awk 'NR>2 {print}'
echo -e "\033[32mrxpck/s-每秒接收包的数量，txpck/s-每秒发出的包的数量\033[0m"
echo -e "\033[32mrxKB/s-每秒接收的数据量，txKB/s-每秒发出的数据量，单位KB\033[0m"

echo
echo -e "\033[33m--------------------------------参考------------------------------------------\033[0m"
echo -e "\033[32mCPU占用最多的前10个进程：ps auxw|head -1;ps auxw|sort -rn -k3|head -10\033[0m"
echo -e "\033[32m内存消耗最多的前10个进程：ps auxw|head -1;ps auxw|sort -rn -k4|head -10\033[0m"
echo -e "\033[32m虚拟内存使用最多的前10个进程：ps auxw|head -1;ps auxw|sort -rn -k5|head -10\033[0m"



