
NAME = stack

SRCS = srcs/docker-compose.yml

$(NAME): all

all:
	cd srcs
	docker compose up