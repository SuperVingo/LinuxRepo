#!/bin/bash
inputs() {
	read -p "Enter two integers: " int1 int2 # read를 통해 int1 int2에 입력값 저장 
}
exitPrompt(){
	read -p "Do you wish to continue? [y]es or [n]o: " ans
	if [ $ans == 'n' ] # n 를 선택하면
	then
		echo "Exiting the script. Have a nice day!"
		exit 0 # 종료한다
	else # 다른것을 입력하면
		return 0 # 함수를 빠져나와 계속 진행
	fi
}

while (true)
do
	clear
	printf "Choose from the following operations: \n"
	printf "[a]Addition [b]Subtraction [c] Multiplication [d]Division\n"
	read -p "### Your choice: " choice
	case $choice in
		[aA]) # a나A가 입력되면
			inputs
			res=$((int1+int2)) #결과값은 덧셈
		;;
		[bB]) # b나 B가 입력되면
			inputs
			res=$((int1-int2)) #결과값은 차이
		;;
		[cC]) # c나 c가 입력되면
			inputs
			res=$((int1*int2)) #결과값은 곱셈
		;;
		[dD]) # d나 D가 입력되면
			inputs
			if [ $int2 -eq 0 ]; # 0으로 나눌려고 한다면
			then
				echo "Cannot divide by zero" # 0으로 나눌 수 없다고 경고
				res=0 # 결과는 0으로
			else # 0이 아닌값이라면
				res=$((int1/int2)) # 결과값은 나눈값
			fi
		;;
		*) # 위 결과를 제외하고 다른 입력이면
			res=0 # 결과 0으로
			echo "wrong choice!" # 잘못된 선택 경고
	esac
		
	echo "The result is: " $res #결과 출력
	exitPrompt # 종료할지 결정
done
