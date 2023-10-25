# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kyung-ki <kyung-ki@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/25 12:52:51 by kyung-ki          #+#    #+#              #
#    Updated: 2023/10/25 13:01:09 by kyung-ki         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	libftprintf.a
SRCS	=	
OBJS	=	$(SRCS:.c=.o)
B_SRCS	=	
B_OBJS	=	$(B_SRCS:.c=.o)

all : $(NAME)

$(NAME) : $(OBJS)
	ar rc $(NAME) $(OBJS)

bonus : $(OBJS) $(B_OBJS)
	ar rc $(NAME) $(OBJS) $(B_OBJS)

clean : 
	rm -rf $(OBJS) $(B_OBJS)

fclean : clean
	rm -rf $(NAME)

re : fclean all