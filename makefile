COMP = gcc
FLAGS = -Wall -Wextra -pedantic

# Target files
WINDOW = ./projects/window.c
BREAKOUT = ./projects/bkout.c
PONG = ./projects/pong.c

default:
	@$(COMP) -o prog $(WINDOW) -I/usr/local/include -L/usr/local/lib -lraylib -lGL -lm
	@./prog

pong:
	@$(COMP) -o prog $(PONG) -I/usr/local/include -L/usr/local/lib -lraylib -lGL -lm
	@./prog

break:
	@$(COMP) -g -o prog $(BREAKOUT) -I/usr/local/include -L/usr/local/lib -lraylib -lGL -lm
	@./prog
