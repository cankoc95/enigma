CC=g++
CFLAGS = -g -std=c++11 -Wall -pedantic
DEPS = FixedRotor.h Machine.h PermutationData.h Rotor.h
OBJ = FixedRotor.o PermutationData.o Rotor.o Test.o Machine.o

all: test

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $<

test: $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

clean:
	rm -r *.o test