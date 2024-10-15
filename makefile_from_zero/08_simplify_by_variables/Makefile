objs = block.o command.o input.o main.o scene.o test.o
a = $$(objs) # try to represent the literal $(objs) by adding the $ at the beginning

# ^^^^^^^^^^^^^^
# using two dollar symbols to represent one. 

sudoku: $(objs)	
	@# arise shell error, because both make and shell have special meaning in $ symbol, so we should choose another way to represent the literal $(bojs)
	@# ATTENTION: this arise an error dut to it doesnt meet the shell's syntax 
	@# echo $(a)
	
	@# another way to output a literal string
	@# ATTENTION: this should be a command that handled by make but not shell
	@# output: hello world
	@# $(info hello world) 
	
	@# so we change "hello world" to the liteal that we just wanted
	$(info $(a))
	
	g++ -o sudoku ${objs}
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
clean:
	-rm sudoku
	-rm $(objs)		
