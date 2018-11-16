#!/bin/sh
mtext="hello" #定义字符串
mtext2="world"
mtext3=$mtext" "$mtext2 #字符串拼接
echo $mtext3	#输出字符串
echo ${#mtext3}	#输出字符串的长度
echo ${mtext3:1:4}	#截取字符串

echo "how are you"
echo how are you
mytext="how are you"
echo $mytext

echo -e "hello \nworld"

echo "hello world" > a.txt
echo `date`
