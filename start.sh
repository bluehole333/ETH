arr=("cvbsz"  "cvbsh"  "cvbbj" )
for v in ${arr[@]}
do
	echo "start $v"
	ssh zengym@$v  "docker-compose up -d"
done


