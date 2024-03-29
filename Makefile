COMPOSE_FILE=./srcs/docker-compose.yml

all: run

run: 
	@sudo mkdir -p /home/achane-l/data/wordpress
	@sudo mkdir -p /home/achane-l/data/database
	@docker-compose -f $(COMPOSE_FILE) up --build

up:
	@sudo mkdir -p /home/achane-l/data/wordpress
	@sudo mkdir -p /home/achane-l/data/mysql
	@docker-compose -f $(COMPOSE_FILE) up -d --build

debug:
	@sudo mkdir -p /home/achane-l/data/wordpress
	@sudo mkdir -p /home/achane-l/data/mysql
	@docker-compose -f $(COMPOSE_FILE) --verbose up

list:	
	 docker ps -a

list_volumes:
	docker volume ls

clean: 	
	@docker-compose -f $(COMPOSE_FILE) down
	@-docker stop `docker ps -qa`
	@-docker rm `docker ps -qa`
	@-docker rmi -f `docker images -qa`
	@-docker volume rm `docker volume ls -q`
	@sudo rm -rf /home/achane-l/data/wordpress
	@sudo rm -rf /home/achane-l/data/database
	@docker system prune -a --force

.PHONY: run up debug list list_volumes clean
