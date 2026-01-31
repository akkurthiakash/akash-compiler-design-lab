%{
#include<stdio.h>
%}

%%
(0[1-9]|[12][0-9]|3[01])\/(0[1-9]|1[0-2])\/[1-2][0-9]{3} {
    printf("valid\n");
}
.+ {
    printf("invalid\n");
}
%%

int yywrap(){ return 1; }

int main()
{
    yylex();
    return 0;
}
