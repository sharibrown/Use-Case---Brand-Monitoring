#!/bin/sh

if [ $# -lt 2 ]; then
	echo "Usage: $0 OUTPUTFILE PREFIX"
	exit 2
fi
OUTPUTFILE=$1
PREFIX=$2
for file in `ls | grep ${PREFIX}`
do 
	cat $file >> $OUTPUTFILE
	echo "" >> $OUTPUTFILE
done
