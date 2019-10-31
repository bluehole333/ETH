arr=("cvbsz"  "cvbsh"  "cvbbj" )
for v in ${arr[@]}
do
	echo "depoly $v"
	if [ "$v" == "cvbsz" ]
	then
		scp docker-compose_sz.yml zengym@$v:~/docker-compose.yml
	else
		scp docker-compose.yml zengym@$v:~/
	fi
	#ssh zengym@$v mkdir ~/data/geth -p;
	#scp data/static-nodes.json zengym@$v:~/data/geth/
	ssh zengym@$v  " docker-compose down;docker pull enochi/cvb;"
done
for v in ${arr[@]}
do
	echo "run $v"
	ssh zengym@$v docker-compose up -d
done

