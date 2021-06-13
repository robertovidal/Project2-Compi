%{
	#include <stdio.h>
	#include <string.h>
	#include "parser.tab.h"
	#include "global.h"
	void change_input(FILE *file);
%}

intvalue     [0-9]+
identifier       ([a-zA-Z]|_)([a-zA-Z0-9]|_)*

%%

" "	{ }
\n	{ }
{intvalue}	{return NUM;}
"print"	{return PRINT;}
"("	{return LEFTPARENTHESIS;}
")"	{return RIGHTPARENTHESIS;}
"+"	{return PLUSSIGN;}
","	{return COMMA;}
":="	{return EQUALSIGN;}
";"	{return SEMICOLON;}
{identifier} { return ID;}
<<EOF>>	{ return ENDOFFILE;}
.	{return OTHER;}

%%

void change_input(FILE *file){
	yyin = file;
}