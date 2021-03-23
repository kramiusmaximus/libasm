NAME = Libasm
TEST_NAME = func_test
SOURCES_DIRECTORY = srcs
SOURCES = $(shell find $(SOURCES_DIRECTORY) \( -name '*.s' \! -name '*_bonus.s' \))
OBJECTS = $(patsubst %.s, %.o, $(SOURCES))
INCLUDES = includes
HEADERS = $(shell find $(INCLUDES_DIRECTORY) \( -name '*.h' \! -name '*_bonus.h' \))
ASS = /usr/local/bin/nasm
ASS_FLAGS = -f macho64
LINKER = ld
LINKER_FLAGS = -macosx_version_min 10.7.0

all:	${NAME}

${NAME}:	${OBJECTS}
			$(LINKER) $(LINKER_FLAGS) -o ${TEST_NAME} ${OBJECTS}

%.o:		%.s ${HEADERS}
			$(ASS) $(ASS_FLAGS) -o $@ $<

test:		all
			./${TEST_NAME}

clean:
			rm -rf $(OBJECTS)

fclean:		clean
			rm -rf ${TEST_NAME}