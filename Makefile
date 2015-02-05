CFLAGS=-Wall -g

SRC=$(wildcard *.c)

PROGS=$(patsubst %.c,%,$(SRC))

all: $(PROGS)

%: %.c
	$(CC) $(CFLAGS) -o $@ $<

# debug: $(PROGS)
# 	for i in $(PROGS); do \
# 		/usr/bin/valgrind --track-origins=yes ./$$i ; \
# 	done;
# 

clean:
	rm -f $(PROGS)
