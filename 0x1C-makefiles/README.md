C - Makefiles


A makefile is a simple way of defining how to derive files from other files. It's a key building block of many software build processes.

At its core, a makefile defines a set of rules to transform one set of files (usually source code or other inputs) into another set of files (usually executable programs or other outputs).

Here are the basic components of a makefile:

Targets: These are the files you want to generate. For instance, for a C program, this would be the executable file.

Prerequisites: These are files that the targets depend on. For a C program, these would be the source and header files.

Commands: The commands that make runs to produce the target from the prerequisites.

A simple example:

Makefile
Copy code
# This is a comment in a makefile

all: program

program: main.o util.o
    gcc -o program main.o util.o

main.o: main.c util.h
    gcc -c main.c

util.o: util.c util.h
    gcc -c util.c

clean:
    rm -f program *.o
Explanation:

program is dependent on main.o and util.o. When you type make, it tries to build the first target, which in this case is all that is just a reference to program.

To create program, it sees that it needs main.o and util.o. If either of these .o files does not exist or is older than its corresponding .c file or the util.h, then the command below that prerequisite is run.

gcc -c is the command to compile a C file into an object file (.o).

gcc -o program main.o util.o is the command to link the object files into an executable called program.

The clean target has no prerequisites and its purpose is to clean up the compiled files. Running make clean will execute the rm command to delete the program and all object files.

Few more points:

Variables: Makefiles often use variables. For instance, you might see CC = gcc at the top of a makefile. Later, $(CC) would be used in place of gcc.

Automatic Variables: There are special variables like $@ for the target name, $< for the first prerequisite, and $^ for all prerequisites. These help in writing more general rules.

Pattern Rules: These allow you to define a generic rule. For instance, %.o: %.c is a pattern rule that says how to build any .o file from its corresponding .c file.

Phony Targets: Some targets, like all and clean, don’t correspond to actual files. They're just names for a set of commands to be executed when requested. To ensure make doesn’t get confused if a file named all or clean is present, they're often declared as "phony" using .PHONY: all clean.

Remember, make uses timestamps to determine whether a target needs to be rebuilt. If the target file is older than its prerequisites, then the commands for the target are run.


## Tasks :page_with_curl:

* **0. make -f 0-Makefile**
  * [0-Makefile](./0-Makefile): Makefile that creates an executable `school` based on
  [school.c](./school.c) and [main.c](./main.c). Includes:
    * Rule `all` that builds the executable.

* **1. make -f 1-Makefile**
  * [1-Makefile](./1-Makefile): Makefile that creates an executable `school` based on
  [school.c](./school.c) and [main.c](./main.c). Builds on [0-Makefile](./0-Makefile)
  with:
    * Variable `CC` that defines the compiler to be used.
    * Variable `SRC` that defines the `.c` files to compile.
    * The `all` rule only recompiles updated source files.

* **2. make -f 2-Makefile**
  * [2-Makefile](./2-Makefile): Makefile that creates an executable `school` based on
  [school.c](./school.c) and [main.c](./main.c). Builds on [1-Makefile](./1-Makefile)
  with:
    * Variable `OBJ` that defines the `.o` files to compile.
    * Variable `NAME` that defines the name of the executable.

* **3. make -f 3-Makefile**
  * [3-Makefile](./3-Makefile): Makefile that creates an executable `school` based on
  [school.c](./school.c) and [main.c](./main.c). Builds on [2-Makefile](./2-Makefile)
  with:
    * Rule `clean` that deletes all Emacs/Vim temporary files as well as the
    executable.
    * Rule `oclean` that deletes the object files.
    * Rule `fclean` that deltes all of the temporary files, executable, and
    object files.
    * Rule `re` that forces recompilation of all source files.
    * Variable `RM` that defines the command to delete files.

* **4. A complete Makefile**
  * [4-Makefile](./4-Makefile): Makefile that creates an executable `school` based on
  [school.c](./school.c) and [main.c](./main.c). Builds on [3-Makefile](./3-Makefile)
  with:
    * Variable `CFLAGS` that defines the compiler flags `-Wall -Werror -Wextra
    -pedantic`.

* **5. Island Perimeter**
  * [5-island_perimeter.py](./5-island_perimeter.py): Python function that returns the
  perimeter of an island defined in a grid.
  * Prototype: `def island_perimeter(grid):`
  * The parameter `grid` is a list of a list of integers.
    * Water is represented by `0`.
    * Land is represented by `1`.
    * Each element of the lists represents a cell square of side length 1.
    * Grid cells are connected horizontally/verticaly (not diagonally).
    * The grid is rectangular, with a width and height not exceeding 100.
    * The grid is completely surrounded by water, and there is either exactly
    one island or nothing.
    * The island does not contain lakes (water inside disconnected from
    surrounding land).

* **6. make -f 100-Makefile**
  * [100-Makefile](./100-Makefile): Makefile that creates an executable `school` based on
  [school.c](./school.c) and [main.c](./main.c). Builds on [4-Makefile](./4-Makefile)
  with:
    * Does not define the variable `RM`.
    * Never uses the string `$(CFLAGS)`.
    * Does not compile if the header `m.h` is missing.
    * Works even if there are existing files of the same name as any of the
    Makefile rules in the current directory.
