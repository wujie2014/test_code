#!/bin/bash
echo "hello world !"
myText="Hello world"
myNum=100
echo $myText
echo myNum

a=3
b=4
val=`expr $a + $b`
echo "total value sum: $val"

val=`expr $a - $b`
echo "total value sub: $val"

val=`expr $a \* $b`
echo "total value *: $val"

val=`expr $a / $b`
echo "total value /: $val"
