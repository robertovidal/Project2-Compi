%{

#include <stdio.h>
#include "global.h"
int yyerror(char *s);

%}

%token ID NUM PRINT SEMICOLON EQUALSIGN LEFTPARENTHESIS RIGHTPARENTHESIS COMMA PLUSSIGN ENDOFFILE OTHER


%start SPRIME

%%

SPRIME : S ENDOFFILE{
    return 0;
}
;

S : S SEMICOLON S
| ID EQUALSIGN E
| PRINT LEFTPARENTHESIS L RIGHTPARENTHESIS
;

E : ID
| NUM 
| E PLUSSIGN E
| LEFTPARENTHESIS S COMMA E RIGHTPARENTHESIS
;

L : E
| L COMMA E

;

%%

int yyerror(char *s)
{
	return 1;
}