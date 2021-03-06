# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: prafael- <prafael-@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/10/11 15:20:06 by prafael-          #+#    #+#              #
#    Updated: 2021/10/20 14:06:26 by prafael-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME=libftprintf.a

CC=clang

CFLAGS=-Wall -Wextra -Werror

SRC= ft_printf.c ft_char.c ft_decimal.c ft_hex.c \
ft_pointer.c ft_printf.c ft_string.c ft_printf_utils.c

RM=rm -f

OBJ=$(SRC:.c=.o)

$(NAME): ft_printf.h
	$(CC) $(CFLAGS) -c $(SRC)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

all: $(NAME)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: clean fclean
