#!/bin/sh
read -p "파일/디렉토리 이름 입력 " filename # 파일 이름 입력

if [ ! -e $filename ];then # 파일이 존재하지 않을때
	echo "$filename 은 존재하지 않습니다."
	exit 0
fi
	
options="d L c b p S f"
for option in $options
do
	if [ -$option $filename ]
	then
		echo -n "$filename은 "
		case $option in
			'd') 
				echo -n "디렉토리";;
			'L')
				echo -n "심볼릭링크";;
			'c')
				echo -n "문자장치";;
			'b')
				echo -n "블록장치";;
			'p')
				echo -n "파이프";;
			'S')
				echo -n "소켓";;
			'f')
				echo -n "보통파일";;
		esac
		echo "입니다."
		exit 0
	fi
done
