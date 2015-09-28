# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lboudaa <lboudaa@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/13 19:15:04 by lboudaa           #+#    #+#              #
#    Updated: 2015/05/24 22:25:07 by lboudaa          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libfts.a

SRC		= 	ft_isalnum.s ft_isalpha.s ft_isdigit.s ft_isascii.s ft_isprint.s\
			ft_bzero.s ft_toupper.s ft_tolower.s ft_strcat.s ft_strlen.s ft_puts.s\
			ft_memset.s ft_memcpy.s ft_strdup.s ft_cat.s ft_isupper.s ft_islower.s\
			ft_strcmp.s ft_strequ.s ft_strchr.s

NASM	= ~/.brew/Cellar/nasm/2.11.08/bin/nasm

SRCDIR	= ./

INCDIR	= ./

CC_FLAG = -Wall -Werror -Wextra

MAIN	= main_test

FLAG	= -f macho64

SRCS	= $(addprefix $(SRCDIR), $(SRC))

OBJS	= $(SRCS:.s=.o)

.SILENT:

all: $(NAME)

$(NAME) : $(OBJS)
	echo "Compiling $(NAME)..."
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)
	echo "DONE"

%.o: %.s
	$(NASM) $(FLAG) $<

clean:
	rm -rf $(OBJS)
	echo "Object files has been removed!"

fclean: clean
	rm -rf $(NAME)
	rm -rf main_test
	echo "$(NAME) has been removed!"

re: fclean all

test: all
	gcc $(CC_FLAG) -o $(MAIN) main.c -L./ -lfts -I./
	echo "$(MAIN) has been created!"
	./$(MAIN)
