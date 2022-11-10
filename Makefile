
NAME = stack

SRC = srcs/docker-compose.yml

$(NAME): all

all:
	docker compose up