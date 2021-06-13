#include <stdio.h>
#include <stdlib.h>
#include "global.h"

int main(int argc, char *argv[]){
    if(argc == 1)
        printf("The name of the file is missing. \n");
    if(argc == 2){
        FILE *file = fopen(argv[1], "r");
        if(file == NULL){
            printf("Cannot open %s", argv[1]);
            exit(0);
        }
        change_input(file);
        int errorparsing = yyparse();
        if(errorparsing)
            printf("The file has a syntax error\n");
        else
            printf("The file has a correct syntax\n");
    }
}