# libasm

## Introduction
Libasm is a C-language library which implements functions written in Assembler code (Intel x64).

The library implements the following builtin functions:
- strcpy

## Prerequisites
1. nasm assembler
2. gcc compiler

## Usage
1. Clone the repository
2. In the root direcotry, execute the command 'make' to compile the static Library
3. Import the library using the command '#include <Libasm.a>'
4. Congrats! You now now have access to 6 awesome functions, which you already had access to through native libraries, but you can feel a sense of greater satisfaction, knowing that these functions were assembled, compiled, and linked from home-made assembly code, as opposed to assembly code made through the heartless automated process offered by the gcc compiler.
