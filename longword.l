%{
#include <stdio.h>
int counter = 0;
%}

%%
[a-zA-Z]+ {
    if (yyleng > counter)
        counter = yyleng;
}
[ \t\n]+ ;    /* ignore whitespace */
. ;            /* ignore other characters */
%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();
    printf("Largest word length = %d\n", counter);
    return 0;
}
