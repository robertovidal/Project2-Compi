parser: parser.y scanner.l main.c
	bison -d parser.y
	flex scanner.l
	gcc main.c parser.tab.c lex.yy.c -lfl -o parser