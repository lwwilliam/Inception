build:
	docker-compose -f ./srcs/docker-compose.yml build
	docker-compose -f ./srcs/docker-compose.yml up

stop:
	docker-compose -f ./srcs/docker-compose.yml down

fclean:
	docker-compose -f ./srcs/docker-compose.yml down
	docker system prune -f
	docker volume prune -f
	rm -rf $(HOME)/data/mariadb/*
	rm -rf $(HOME)/data/wordpress/*

re:
	docker-compose -f ./srcs/docker-compose.yml down
	make fclean
	mkdir -p $(HOME)/data/mariadb/
	mkdir -p $(HOME)/data/wordpress/
	docker-compose -f ./srcs/docker-compose.yml build
	docker-compose -f ./srcs/docker-compose.yml up

ps:
	docker-compose -f ./srcs/docker-compose.yml ps

nginx:
	docker-compose -f ./srcs/docker-compose.yml exec nginx /bin/bash

mariadb:
	docker-compose -f ./srcs/docker-compose.yml exec mariadb /bin/bash

wordpress:
	docker-compose -f ./srcs/docker-compose.yml exec wordpress /bin/bash


# docker system prune -a
# docker volume prune -f