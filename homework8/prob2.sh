#!/bin/sh
if [ $# -eq 0 ] # 인자가 없으면실패
then
	echo "Usage: $0 numbers" 1>&2
	exit 1
fi

sum=0
for arg in $*
do
	sum=`expr $sum + $arg` # sum += arg
done
echo $um # 출력
