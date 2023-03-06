#!/bin/bash
n=10
a=.txt
mkdir mydir
chmod 777 mydir
touch myfile
echo 2023 > myfile
mv moveme ./mydir
cp copyme ./mydir
cd mydir
mv copyme copied
cd ..
cat readme
gcc bad.c 2> err.txt
if [ $# -ne 0 ]
then
	n=$1
fi
mkdir gen
cd gen
while [ $n -ne 0 ]
do
	touch $n$a
	n=$[$n-1]
done

