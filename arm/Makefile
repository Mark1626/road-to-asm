
all: hello collatz loop

%: %.o
	gcc -o $@ $<

%.o: %.asm
	as -o $@ $<

clean:
	rm -f *.o hello collatz loop

.PHONY: clean
