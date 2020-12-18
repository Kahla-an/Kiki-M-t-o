NAME = test.exe

CC	= gcc

RM	= rm -f

SRC =	src/hello.c \
		src/main.c

OBJ	= $(SRC:.c=.o)

CFLAGS	+= -W -Wall -Wextra -Werror -I./include

all:		$(NAME)

$(NAME):	$(OBJ)
	@$(CC) $(CFLAGS) -o $(NAME) $(OBJ)

clean:
	$(RM) $(OBJ)

fclean:	clean
	$(RM) $(NAME)

re:	fclean all

.PHONY: all clean fclean re