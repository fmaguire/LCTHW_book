CFLAGS=-Wall -g

SRC=$(wildcard *.c)

PROGS=$(patsubst %.c,%,$(SRC))

all: $(PROGS)

%.ex: %.c
	$(CC) $(CFLAGS) -o $@ $<

clean:
	rm -f $(PROGS)
