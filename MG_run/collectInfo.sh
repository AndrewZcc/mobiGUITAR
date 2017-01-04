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
echo "Copy ==> /results/"$aut"/output-exp/coverage/*.ec"
mkdir -p "./aut_coverage/"$aut
cp "../results/"$aut"/output-exp/coverage/*.ec" "./aut_coverage/"$aut

echo "\n--------------------"
echo "Copy em file"
echo "Copy ==> /subjects/"$aut"/bin/coverage.em"
cp "../subjects/"$aut"/bin/coverage.em" "./aut_coverage/"$aut

echo "\n--------------------"
echo "END ..."
