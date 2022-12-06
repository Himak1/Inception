
NAME = stack

SRCS = srcs/docker-compose.yml

UNAME := $(shell uname)
ifeq ($(UNAME), Linux)
  DK_CMP = docker-compose
else
  DK_CMP = docker compose
endif

$(NAME): all

all:
	cd srcs ; $(DK_CMP) up 

clean:
	cd srcs ; $(DK_CMP) stop

fclean: clean
	cd srcs ; \
	$(DK_CMP) rm ; \
	docker image rm srcs_mariadb srcs_wordpress srcs_nginx ; \
	docker volume rm srcs_database srcs_wordpress_web

re: fclean all