# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bkaztaou <bkaztaou@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/09/22 17:32:42 by bkaztaou          #+#    #+#              #
#    Updated: 2023/09/22 18:14:43 by bkaztaou         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = minishell
CC = cc
FLAGS = -Wall -Wextra -Werror

SRC = $(wildcard ./src/*.c)
UTILS = $(wildcard ./src/*.c)
BUILTIN = $(wildcard ./builtin/*.c)

FILES = $(SRC) $(UTILS) $(BUILTIN)
OBJ = $(FILES:.c=.o)

all: $(NAME)

$(NAME) : $(OBJ)
	ar rc $(NAME) $(OBJ)

$(OBJ) : $(FILES)
	$(CC) $(CFLAGS) -c $(FILES)

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean all
