#!/bin/bash

# 화면으로 부터 텍스트 입력받기. read from prompt
read -p "How old are you? " age

# -ge 는 grater than equal 
# if [] 뒤에는 then을 개행해서 넣거나 ]뒤에 ;을 붙이고 then을 해줘야 함.
if [ $age -ge 16 ]
then
  echo "You can drive"
elif [ $age -eq 15 ]  # elif 뒤에도 then이 필요함.
then
  echo "You can drive next year"
else
  echo "You can't drive"
fi

# 또 다른 형태의 if

if ((age == 10)); then
  echo "Your number equals 10"
fi

if ((age > 10)); then
  echo "It is greater than 10"
else
  echo "It is less then the"
fi

if (( ((age %2)) == 0)); then
  echo "It is even"
fi

if (( ((age > 0)) && ((age < 51)))); then
  echo "$age is between 1 and 50"
fi

echo
# touch로 파일을 만들고 vi로 파일을 열어라.
touch samp_file && ls

echo
# samp_dir 이 없으면 만들어라.
# [ ] 는 if 안에 들어가는 condition 임.
[ -d samp_dir ] || mkdir samp_dir && ls
# 주: [ ] 앞뒤 공백 필수!
# 주2: [ -d ] 는 zsh에서는 안먹음.
echo
rm -rf samp_*

# [ -d xxx ] : xxx 는 directory?
# [ -f xxx ] : xxx 는 file?
# [ -e xxx ] : xxx 파일 exist?
# [ -r xxx ] : xxx 파일 readable?
# [ -w xxx ] : xxx 파일 writable?
# [ -x xxx ] : xxx 파일 executable?
# [ -L xxx ] : is xxx simbolic link?
# [ -p xxx ] : is xxx pipe?

# condition에 대해 더 자세히 보려면..
# https://linuxacademy.com/blog/linux/conditions-in-bash-scripting-if-statements/
# https://www.tldp.org/LDP/abs/html/comparison-ops.html
# http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_07_01.html

[[ $a == z* ]]   # True if $a starts with an "z" (pattern matching).
[[ $a == "z*" ]] # True if $a is equal to z* (literal matching).

[ $a == z* ]     # File globbing and word splitting take place.
[ "$a" == "z*" ] # True if $a is equal to z* (literal matching).
# 주: [[ $a ]] 와  [ "$a"] 는 같은 값을 가리킴.


# regex
pat="^[0-9]{8}$" # 숫자 8자리 체크 regex
# date 입력 받은값 패턴 체크.
[[ $date =~ $pat ]]