
NAME = stack

SRCS = srcs/docker-compose.yml

UNAME := $(shell uname)

$(NAME): all

ifeq ($(UNAME), Linux)
  DK_CMP = docker-compose
else
  DK_CMP = docker compose
endif

all:
	cd srcs ; $(DK_CMP) up

re:
	cd srcs ; $(DK_CMP) up --build