NAME = Libasm
TEST_NAME = main
SOURCES_DIRECTORY = srcs
SOURCES = main.s
OBJECTS = $(patsubst %.s, %.o, $(SOURCES))
INCLUDES = includes
HEADERS = $(shell find $(INCLUDES_DIRECTORY) \( -name '*.h' \! -name '*_bonus.h' \))
ASS = nasm
ASS_FLAGS = -f macho64
LINKER = ld
LINKER_FLAGS = -macosx_version_min 10.7.0

all:	${NAME}

${NAME}:	${OBJECTS}
			$(LINKER) $(LINKER_FLAGS) -o ${TEST_NAME} ${OBJECTS}

%.o:		%.s ${HEADERS}
			$(ASS) $(ASS_FLAGS) -o $@ $<

test:		all
			./main

clean:
			rm -rf $(OBJECTS)

fclean:		clean
			rm -rf ${TEST_NAME}