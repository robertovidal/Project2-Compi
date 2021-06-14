# Project2-Compi
Students:
Jose Pablo Fernández Cubillo, 2019047740
Roberto Vidal Patiño, 2019065537

There is a makefile which compiles the project.
First the bison code is compiled, this is located in the 
parser.y file.

If you don't have bison installed already it can be done
with:

sudo apt-get install bison

Then the code related to flex is compiled (the scanner)
which results in a lex.yy.c file

If you don't have flex installed already it can be done
with:

sudo apt-get install flex

Following that, all the resulting files along with main.c
are compiled using gcc and the parser can be run with

./parser test

Where test is the file we are using to verify the program
works, here the string given in the last homework is written
to be tested
