.PHONY : clean all
CFLAGS = -Wall -g -O2
targets = hello world
sources = main.c print.c
objects = main.o print.o


all : $(targets)
	@echo "All done"

$(targets): $(objects)
	gcc $(CFLAGS) $(objects) -o $@

%.o: %.c
	gcc $(CFLAGS) -c $^ -o $@

clean:
	rm -f *.o hello	world

