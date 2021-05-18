docker-build:
	docker build . -t pietroski/node-legacy-serasa-api

docker-run:
	docker run -p 7007:7007 -d --name node-legacy-serasa-api pietroski/node-legacy-serasa-api

docker-stop:
	docker stop node-legacy-serasa-api && docker rm node-legacy-serasa-api

all: docker-build docker-run

.PHONY: docker-build docker-run docker-stop
