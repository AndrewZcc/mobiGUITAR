#!/bin/bash

echo "\nMobiGUITAR: Information Collector"
echo "[Usage: sh collectInfo.sh AUT_Name]\n"

if [ $# != 1 ]; then
	echo "[Parameters Number Error]"
	echo "[Usage: sh collectInfo.sh AUT_Name]"
	exit 1
fi

aut=$1

echo "--------------------"
echo "Copy ec directory (files)"
echo "Copy ==> /results/"$aut"/coverage/*.ec"
rm -rf "./aut_coverage/"$aut 		# 先清空原有数据
mkdir -p "./aut_coverage/"$aut 		# 再重新创建目录拷贝新数据
ecfile="../results/"$aut"/coverage/*.ec"
#echo "ECfile loc: "$ecfile
cp $ecfile "./aut_coverage/"$aut"/"

echo "\n--------------------"
echo "Copy em file"
echo "Copy ==> /subjects/"$aut"/bin/coverage.em"
cp "../subjects/"$aut"/bin/coverage.em" "./aut_coverage/"$aut

echo "\n--------------------"
echo "END ..."
