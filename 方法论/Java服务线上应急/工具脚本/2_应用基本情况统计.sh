
## @作者: 陈彩华(caison@aliyun.com)
## @创建时间: 2019-02-07
## @功能: 应用基本情况统计
## @使用：sh 1_应用基本情况统计.sh [进程十进制id]
## @注意：建议使用root权限运行
echo 
echo

pid=$1
if [ ! $pid ]  
then
  echo 输入进程id为空
  exit
fi
echo 输入进程id = $pid


echo -e "\033[33m--------------------------------计算负载------------------------------------------\033[0m"
echo -e "\033[34m[近3秒进程CPU使用率]\033[0m"

declare -i counter=0
#use while to loop
while ((counter<3));do
    let ++counter
    echo $(top -b -n 1 -p $pid  2>&1 | awk -v pid=$pid '{if ($1 == pid)print $9}')
    sleep 1
done
echo 

echo -e "\033[34m[进程线程数]\033[0m"
ps hH p $pid|wc -l
echo

echo -e "\033[33m--------------------------------存储负载------------------------------------------\033[0m"
echo -e "\033[34m[进程内存空间使用]\033[0m"
echo $(cat  /proc/$pid/status|grep -e VmRSS| awk '{print $2/1024 "Mb"}')
echo 


echo -e "\033[34m[进程打开文件句柄数]\033[0m"
echo $(lsof -n|awk '{print $2}'|grep -e $pid|uniq -c |awk '{print $1}')
echo

echo -e "\033[33m--------------------------------网络负载------------------------------------------\033[0m"
echo -e "\033[34m[应用TCP连接数]\033[0m"
lsof -p $pid -nP|grep TCP|wc -l
echo

echo -e "\033[34m[端口TCP连接状态]\033[0m"
echo LISTEN $(lsof -p $pid -nP |grep TCP|grep LISTEN|wc -l)
echo CLOSE_WAIT $(lsof -p $pid -nP |grep TCP|grep CLOSE_WAIT|wc -l)
echo ESTABLISHED $(lsof -p $pid -nP |grep TCP|grep ESTABLISHED|wc -l)
echo TIME_WAIT $(lsof -p $pid -nP |grep TCP|grep TIME_WAIT|wc -l)
echo -e "\033[32mLISTEN-监听状态\033[0m"
echo -e "\033[32mCLOSE_WAIT-对方主动关闭连接或者网络异常导致连接中断-状态\033[0m"
echo -e "\033[32mESTABLISHED-正常数据传输状态\033[0m"
echo -e "\033[32mTIME_WAIT-处理完毕等待超时结束状态\033[0m"
echo
echo

echo
echo -e "\033[33m--------------------------------参考------------------------------------------\033[0m"


echo -e "\033[32m jstack 可用于打印线程堆栈信息，注意关注线程阻塞状况\033[0m"
