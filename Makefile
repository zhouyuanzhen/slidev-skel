usage:
	@echo "\nUsage:\n"
	@echo "    make  build | run | stop | clean"

build:
	docker-compose build

run:
	docker-compose up -d
	open http://localhost:3030

stop:
	docker-compose stop

clean:
	docker-compose down
	docker-compose rm
