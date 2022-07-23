#!/bin/bash

# < 기초 연산 및 출력 >
# 상수 정의
declare -r NUM1=5

# 멱승 (안에 괄호가 있고 그것을 실행(echo)해야 계산함.)
echo '$((5**2))='$((5**2))

# 나머지
echo '$((5%2))='$((5%2))

# 변수에 값 더하기
let rand+=4 # 0+4를 한 효과.
echo "let rand+=4 하면 $rand"
let rand+=2
echo "거기에 let rand+=2 하면 $rand"

rand=$((rand+2))
echo "달러 사인으로 더할 수도 있음. $rand"

# let 없이 더하면 String 붙이기가 됨.
rand+=4
echo "그냥 rand+=4 하면 string +가 되서 $rand"

# 더한 값을 바로 출력할 때는 이렇게도 가능.
echo 'echo $((rand+=4)) 이렇게 출력하면서 더해짐.'
echo $((rand+=4))

# 1 더할 때는 ++도 가능하나 아래와 같이 하면 출력후 1 더함.
echo 'echo $((rand++)) 이렇게 출력한 후 더해짐.'
echo $((rand++))
echo "rand=$rand"

echo
echo '실수값 더할 때는 외부 도움이 필요.'
num1=1.2
num2=3.4

num3=$(python -c "print $num1+$num2")
echo "python -c 'print 1.2 + 2.3' => $num3"

num3=$(node -p "$num1+$num2")
echo "node -p '1.2 + 2.3' => $num3"

echo
# 개행문자 포함해서 화면에 출력하기
cat<< END
This is
Multiline text.
END
