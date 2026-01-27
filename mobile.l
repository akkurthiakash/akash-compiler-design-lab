%{
#include <stdio.h>
%}

%%
[6-9][0-9]{9}   { printf("mobile number valid\n"); }
.+              { printf("mobile number invalid\n"); }
%%

int yywrap(void)
{
    return 1;
}

int main()
{
    printf("enter the mobile number: ");
    yylex();
    return 0;
}