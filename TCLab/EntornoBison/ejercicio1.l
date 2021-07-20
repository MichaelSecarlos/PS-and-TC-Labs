%{
#include "sintactico1.tab.h"
int yyparse();
%}

%%
El      {return ARTICULO;}
\n  return *yytext;
%%

int yywrap(void)
{
    yyparse();
    yylex();
}
