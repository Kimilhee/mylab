#!/bin/bash

# function 키워드 없이 선언
getDate() {
  date
  return
}

# 함수는 괄호 없이 호출(평가)됨.
getDate

# 글로벌변수 선언
name="Derek"

# 로컬변수는 namespace 달리 가져서 충돌 안남.
demLocal() {
  local name="Paul"
  return
}

# demLocal 호출해도 
demLocal

# name은 변경 없이 'Derek'이 호출됨.
echo "$name"

# 함수 인자는 따로 할당 안받고 $1, $2로 받아짐.
getSum() {
  local num3=$1
  local num4=$2
  local sum=$((num3+num4))
  # 결과값을 return할 때는 echo로 출력함.
  echo $sum
}

num1=5
num2=6

# 함수 호출은 괄호 없이 되며 인자도 콤마 없이 전달됨. (마치 프로그램 실행 파라메터처럼.)
sum=$(getSum num1 num2)

# 5 + 6의 결과인 11이 출력됨.
echo "The sum is $sum"
