#!/bin/sh

for i in {1..5}
do
	echo $i
done

echo -e "======="

for i in 6 7 8 9
do
	echo $i
done

for FILE in $HOME/.bash*
do
	echo $FILE
done
