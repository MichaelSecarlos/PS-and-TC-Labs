%{
    #include "sintactico6.tab.h"
    int yyparse();
%}

%%
[a-zA-Z][a-zA-Z0-9]*    {return VARIABLE;}
[0-9]+                  {return NUMERO;}
['+']                   {return SUMA;}
\n                      {return NL;}
.           return *yytext;
%%

int yywrap(void)
{
    yyparse();
    yylex();
    return 0;
}
