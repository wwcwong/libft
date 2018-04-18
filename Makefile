# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wawong <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/04/16 16:23:54 by wawong            #+#    #+#              #
#    Updated: 2018/04/17 18:24:22 by wawong           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
FLAGS = -Wall -Wextra -Werror
CC = gcc
OBJ = ft_tolower.o ft_toupper.o ft_isalpha.o ft_isdigit.o ft_isalnum.o ft_isascii.o ft_isprint.o ft_strcmp.o ft_strncmp.o ft_atoi.o ft_strlen.o ft_strdup.o ft_strcpy.o ft_strncpy.o ft_strstr.o ft_strnstr.o ft_strcat.o ft_strncat.o ft_strlcat.o ft_strchr.o ft_strrchr.o ft_putchar.o ft_putstr.o ft_putchar_fd.o ft_putstr_fd.o ft_strclr.o ft_putendl.o ft_putnbr.o ft_putnbr_fd.o ft_putendl_fd.o ft_striter.o ft_striteri.o ft_strequ.o ft_strnequ.o ft_itoa.o ft_memset.o ft_bzero.o ft_memcpy.o ft_memchr.o ft_memcmp.o ft_memccpy.o ft_memmove.o

all: $(NAME)

%.o: %.c
	$(CC) $(FLAGS) -c -o $@ $<

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	/bin/rm -f *.o

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all

.PHONY: clean fclean re
