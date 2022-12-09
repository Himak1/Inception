
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
	cd srcs ; $(DK_CMP) up --build

clean:
	cd srcs ; $(DK_CMP) stop

fclean: clean
	cd srcs ; \
	$(DK_CMP) rm -f ; \
	docker rmi $$(docker images -f "dangling=true" -q) ; \
	docker volume rm srcs_database srcs_wordpress_web

re: fclean all