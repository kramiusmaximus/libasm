NAME = Libasm.a
TEST_NAME = func_test
SOURCES_DIRECTORY = srcs
SOURCES =  srcs/ft_strlen.s srcs/ft_strcmp.s srcs/ft_strcpy.s srcs/ft_strdup.s srcs/ft_write.s srcs/ft_read.s
OBJECTS = $(patsubst %.s, %.o, $(SOURCES))
INCLUDES = includes
HEADERS = $(shell find $(INCLUDES_DIRECTORY) \( -name '*.h' \! -name '*_bonus.h' \))
ASS = /usr/local/bin/nasm
ASS_FLAGS = -f macho64
LINKER = ld
LINKER_FLAGS = -macosx_version_min 10.14.0

all:	${NAME}

${NAME}:	${OBJECTS}
			ar rc $(NAME) $(OBJECTS)
			ranlib $(NAME)

%.o:		%.s ${HEADERS}
			$(ASS) $(ASS_FLAGS) -o $@ $<

test:		all
			gcc -Iincludes main.c $(NAME) -o $(TEST_NAME)
			./${TEST_NAME}

clean:
			rm -rf $(OBJECTS)

fclean:		clean
			rm -rf ${TEST_NAME} ${OBJECTS} $(NAME) main.o