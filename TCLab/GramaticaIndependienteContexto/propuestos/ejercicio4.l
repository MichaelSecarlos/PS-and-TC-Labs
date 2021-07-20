%{
    #include "sintactico4.tab.h"
    int yyparse();
%}

%%
[0-9]+  {return NUMERO;}
['+']     {return SUMA;}
\n      {return NL;}
.       return *yytext;
%%

int yywrap(void)
{
    yyparse();
    yylex();
    return 0;
}
