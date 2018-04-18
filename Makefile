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

CC = gcc

NAME = libft.a

SRC = ft_tolower.c ft_toupper.c ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_strcmp.c ft_strncmp.c ft_atoi.c ft_strlen.c ft_strdup.c ft_strcpy.c ft_strncpy.c ft_strstr.c ft_strnstr.c ft_strcat.c ft_strncat.c ft_strlcat.c ft_strchr.c ft_strrchr.c ft_putchar.c ft_putstr.c ft_putchar_fd.c ft_putstr_fd.c ft_strclr.c ft_putendl.c ft_putnbr.c ft_putnbr_fd.c ft_putendl_fd.c ft_striter.c ft_striteri.c ft_strequ.c ft_strnequ.c ft_itoa.c ft_memset.c ft_bzero.c

OBJECT = ft_tolower.o ft_toupper.o ft_isalpha.o ft_isdigit.o ft_isalnum.o ft_isascii.o ft_isprint.o ft_strcmp.o ft_strncmp.o ft_atoi.o ft_strlen.o ft_strdup.o ft_strcpy.o ft_strncpy.o ft_strstr.o ft_strnstr.o ft_strcat.o ft_strncat.o ft_strlcat.o ft_strchr.o ft_strrchr.o ft_putchar.o ft_putstr.o ft_putchar_fd.o ft_putstr_fd.o ft_strclr.o ft_putendl.o ft_putnbr.o ft_putnbr_fd.o ft_putendl_fd.o ft_striter.o ft_striteri.o ft_strequ.o ft_strnequ.o ft_itoa.o ft_memset.o ft_bzero.o

CFLAGS = -c -Wall -Wextra -Werror -I libft.h

all: $(NAME)

$(NAME):
	@$(CC) $(CFLAGS) $(SRC) && ar rc $(NAME) $(OBJECT)
	@ranlib $(NAME)

clean:
	@rm -f $(OBJECT)

fclean: clean
	@rm -f $(NAME)

re: fclean all
	@rm -f $(OBJECT)
