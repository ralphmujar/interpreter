# Autoversion makefile Version 171129.082609
# (C) 2011-2017 by Ruben Carlo Benante
# GPL v2
#
# lexical analysis and syntactic analysis
# of a very small program for a 
# hellow world example

CC = gcc
LIB = -lfl
o ?= calc

all: i

lex: lex.yy.c

bison: y.tab.c

yacc: bison

lex.yy.c: $(o).l
	flex $(o).l 
	
y.tab.c: $(o).y
	bison -dy $(o).y

y.tab.h: $(o).y

i: lex.yy.c y.tab.c y.tab.h
	gcc lex.yy.c y.tab.c $(o)3.h $(o).c -o i  $(LIB)

clean:
	rm -rf lex.yy.c
	rm -rf y.tab.c
	rm -rf y.tab.h
asm:
	as a.s -o a.o
	ld a.o -o a

