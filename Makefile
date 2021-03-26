NAME = libasm.a
TEST_NAME = libasm_test.ass
SOURCES_DIRECTORY = srcs
SOURCES =  srcs/ft_strlen.s srcs/ft_strcmp.s srcs/ft_strcpy.s srcs/ft_strdup.s srcs/ft_write.s srcs/ft_read.s
OBJECTS = $(patsubst %.s, %.o, $(SOURCES))
INCLUDES = includes
HEADERS = includes/libasm.h
ASS = /usr/local/bin/nasm
ASS_FLAGS = -f macho64
LINKER = ld
LINKER_FLAGS = -macosx_version_min 10.14.0

all:	${NAME}

${NAME}:	${OBJECTS}  ${HEADERS}
			ar rc $(NAME) $(OBJECTS)
			ranlib $(NAME)

%.o:		%.s
			$(ASS) $(ASS_FLAGS) -o $@ $<

test:		all
			gcc -Iincludes main.c $(NAME) -o $(TEST_NAME)
			./${TEST_NAME}

clean:
			rm -rf $(OBJECTS)

fclean:		clean
			rm -rf ${TEST_NAME} ${OBJECTS} $(NAME) main.o