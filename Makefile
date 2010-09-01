# Makefile for jive and valspeak programs

CC	=gcc -march=native
CFLAGS	=-Os
LDFLAGS	=
LDLIBS	=-lfl

all::	jive valspeak

#valspeak::	valspeak.l
#	lex valspeak.l
#	cc $(CFLAGS) -o valspeak lex.yy.c -ll
#	rm lex.yy.c
#
#jive::	jive.l
#	lex jive.l
#	cc $(CFLAGS) -o jive lex.yy.c -ll
#	rm lex.yy.c

clean::
	${RM} *.o a.out core.* lint tags

distclean clobber:: clean
	${RM} jive valspeak
