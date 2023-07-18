build:
	docker-compose -f ./srcs/docker-compose.yml build
	docker-compose -f ./srcs/docker-compose.yml up

re:
	docker-compose -f ./srcs/docker-compose.yml down
	docker-compose -f ./srcs/docker-compose.yml build
	docker-compose -f ./srcs/docker-compose.yml up

fclean:
	docker system prune -f

ps:
	docker-compose -f ./srcs/docker-compose.yml ps

nginx:
	docker-compose -f ./srcs/docker-compose.yml exec nginx /bin/bash

mariadb:
	docker-compose -f ./srcs/docker-compose.yml exec mariadb /bin/bash