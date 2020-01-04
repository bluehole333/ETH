arr=("cvbsz"  "cvbsh"  "cvbbj" )
for v in ${arr[@]}
do
	echo "stop $v"
	ssh zengym@$v  "docker-compose down;sudo rm ~/data/geth/*data -rf;"
done


