all: hello_world hello_world_c

clean:
	rm hello_world.o
	rm hello_world
	rm hello_world_c

hello_world: hello_world.o
	ld -m elf_i386 -o hello_world hello_world.o

hello_world.o: hello_world.nasm
	nasm -f elf32 -o hello_world.o hello_world.nasm

hello_world_c: hello_world_c.c
	gcc hello_world_c.c -o hello_world_c
