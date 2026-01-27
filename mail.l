%{
#include <stdio.h>
%}

%%
[a-z0-9.]+@[a-z]+(\.com|\.in)   { printf("it is valid\n"); }
.+                              { printf("it is not valid\n"); }
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("enter the mail: ");
    yylex();
    return 0;
}
