build:
	docker-compose -f ./srcs/docker-compose.yml build
	docker-compose -f ./srcs/docker-compose.yml up

stop:
	docker-compose -f ./srcs/docker-compose.yml down


re:
	docker-compose -f ./srcs/docker-compose.yml down
	docker system prune -f
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

wordpress:
	docker-compose -f ./srcs/docker-compose.yml exec wordpress /bin/bash


# docker system prune -a
# docker volume prune -a