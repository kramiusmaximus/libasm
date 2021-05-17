# libasm

## Introduction
Libasm is a C-language library which implements functions written in Assembler code (Intel x64).

The library implements the following builtin functions:
- strcpy
- strcpy
- strcmp
- write
- read
- strdup

## Prerequisites
1. _nasm_ assembler
2. _gcc_ compiler

## Usage
1. Clone the repository.
2. In the root direcotry, execute the command `make` to compile the static Library.
   * Incase you get an error, make sure you change the _ASS\_FLAGS_ and _LINKER\_FLAGS_ accordingly to match your processors architecture and OS type and version.
3. Import the library using the command `#include <libasm.a>` and link it with your C files.
4. Congrats! You now now have access to 6 awesome functions, which you already had access to through native libraries, but you can feel a sense of greater satisfaction, knowing that these functions were assembled, compiled, and linked from home-made, fresh out the over, assembly code, as opposed to assembly code made through the cold and heartless automated process offered by the gcc compiler. You're welcome.

## Test
To test the library, perform the following steps:

1. Clone the repository.
2. In the root direcotry, execute the command `make test` to compile the static Library as well as the main.c file, link, then executet the resulting file.
   * Incase you get an error, make sure you change the _ASS\_FLAGS_ and _LINKER\_FLAGS_ accordingly to match your processors architecture and OS type and version.
3. Voila! The provided test shows that the my functions and the native functions are funtionally identical for the provided inputs. 
