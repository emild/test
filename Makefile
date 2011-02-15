APP=hello
OBJS=\
	hello.o
DEBUG=-g
OPT=

CC=gcc
LD=gcc

CFLAGS += $(DEBUG) $(OPT)
LDFLAGS += $(DEBUG) $(OPT)

$(APP): $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $(OBJS)

.c.o:
	$(CC) -c $(CFLAGS) $<

.PHONY: clean

clean:
	rm -f *.o *~
