hello_world: hello_world.o
	ld -m elf_i386 -o hello_world hello_world.o

hello_world.o: hello_world.nasm
	nasm -f elf32 -o hello_world.o hello_world.nasm

