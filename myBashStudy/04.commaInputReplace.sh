#!/bin/bash

OIFS="$IFS"
IFS=","

read -p "Enter 2 numbers to add separated by a comma:" num1 num2

num1=${num1//[[:blank:]]/}  # num1 변수 안의 공백 제거.
num2=${num2//[[:blank:]]/}  # num2 변수 안의 공백 제거.

sum=$((num1+num2))

echo "$num1 + $num2 = $sum"

IFS="$OIFS"

# dog 를 cat으로 변경
str="The dog climbed the tree."
echo "${str//dog/cat}"

# name 이 정의 되어 있지 않으면 값을 할당함.
name="Alis"

# name이 정의되었으면 정의된 것이 출력되고 정의 안되면 Derek이 출력됨. || 비슷한 놈.
echo "I am ${name:=Derek}"