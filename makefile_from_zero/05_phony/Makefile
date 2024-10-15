# Use keyword to specify the default rule
.DEFAULT_GOAL = sudoku

# The first rule woule be considered as the default rule that excuted to generate the target
all:
	@echo This is the first target

sudoku: block.o command.o input.o main.o scene.o test.o
	g++ -o sudoku block.o command.o input.o main.o scene.o test.o

block.o: block.cpp common.h block.h color.h
	g++ -c block.cpp	
	
command.o: command.cpp scene.h common.h block.h command.h
	g++ -c command.cpp	
	
input.o: input.cpp common.h utility.inl
	g++ -c input.cpp
	
main.o: main.cpp scene.h common.h block.h command.h input.h test.h
	g++ -c main.cpp

scene.o: scene.cpp common.h scene.h block.h command.h utility.inl	
	g++ -c scene.cpp
	
test.o: test.cpp test.h scene.h common.h block.h command.h
	g++ -c test.cpp
	
# Let's assume that we have a target called hello.o, but it has no references by other files.
# So when we type "make" command in the terminal, the rule below will not excute automatically,
# but we can type "make hello.o" to specify it to be excuted
hello.o: hello.cpp hello.h
	g++ -c hello.cpp

# This line tells that clean is phony or there is no file named clean in current directory
.PHONY: clean main.o

clean:
	rm block.o command.o input.o main.o scene.o test.o
	rm sudoku
