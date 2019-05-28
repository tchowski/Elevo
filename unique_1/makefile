CC	=	rspec

RM	=	rm -f

SRC	=	my_unique.rb

DIR_SRC = src

OBJ	=	$(addprefix $(DIR_SRC)/, $(SRC))

NAME	=	unique

all:		$(NAME)

$(NAME):
		$(CC) $(OBJ) -o $(NAME)

clean:
		$(RM) $(NAME)

fclean:		clean
		$(RM) $(NAME)

re:		fclean all

.PHONY: all clean fclean re