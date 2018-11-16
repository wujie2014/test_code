#!/bin/sh
array=(1 2 3 4 5)
array2=(aa bb cc dd ee)
value=${array[3]}
echo $value

value2=${array2[3]}
echo $value2

length=${#array[*]}
echo $length

