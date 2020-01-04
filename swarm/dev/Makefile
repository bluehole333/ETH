.PHONY: build cluster test

default: build

build:
	go build -o bin/swarm    github.com/cvbdynasty/CVBETH/cmd/swarm
	go build -o bin/geth     github.com/cvbdynasty/CVBETH/cmd/geth
	go build -o bin/bootnode github.com/cvbdynasty/CVBETH/cmd/bootnode

cluster: build
	scripts/boot-cluster.sh

test:
	go test -v github.com/cvbdynasty/CVBETH/swarm/...
