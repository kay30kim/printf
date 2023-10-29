# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kyung-ki <kyung-ki@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/25 12:52:51 by kyung-ki          #+#    #+#              #
#    Updated: 2023/10/29 18:00:13 by kyung-ki         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC		=	clang
CFLAGS	=	-Werror -Wall -Wextra -Iinclude
NAME	=	libftprintf.a
SRC		=	ft_itoa.c ft_print_c.c ft_print_d_i.c ft_print_p.c ft_print_s.c ft_print_u.c \
			ft_print_x.c ft_printf.c ft_putchar_fd.c ft_strlen.c
SRC_DIR	=	src
SRCS	=	$(addprefix $(SRC_DIR)/, $(SRC))
OBJS	=	$(SRCS:.c=.o)

all : $(NAME)

$(NAME) : $(OBJS)
	ar rc $(NAME) $(OBJS)
#	$(CC) $(CFLAGS) -o $(NAME) $(OBJS) src/ft_main.c


#$(CC) $(CFLAGS) -o $@ $^
#bonus : $(OBJS) $(B_OBJS)
#	ar rc $(NAME) $(OBJS) $(B_OBJS)

clean : 
	rm -rf $(OBJS)

fclean : clean
	rm -rf $(NAME)

re : fclean all

.PHONY : all clean fclean re
