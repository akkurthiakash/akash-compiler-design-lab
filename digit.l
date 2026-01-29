%{
#include <stdio.h>
%}

%%
([0-9]+)|([0-9]*\.[0-9]+)   { printf("\n%s is DIGIT", yytext); }
[ \t\n]                    ;   /* ignore spaces and newlines */
.+                          { printf("\n%s is NOT A DIGIT", yytext); }
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter the digit:\n");
    yylex();
    return 0;
}