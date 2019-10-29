arr=("cvbsz"  "cvbsh"  "cvbbj" )
for v in ${arr[@]}
do
        echo "copy $v"
        if [ "$v" == "cvbsz" ]
        then
                scp ./data/static-nodes.json zengym@$v:~/data/geth
        else
                scp ./data/static-nodes.json zengym@$v:~/data/geth;
		scp ./data/static-nodes.json zengym@$v:~/data1/geth;
		scp ./data/static-nodes.json zengym@$v:~/data2/geth;
		scp ./data/static-nodes.json zengym@$v:~/data3/geth;
        fi
        ssh zengym@$v  "docker-compose down;docker-compose up -d"
done

