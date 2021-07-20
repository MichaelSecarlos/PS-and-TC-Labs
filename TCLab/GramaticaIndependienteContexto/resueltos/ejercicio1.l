%{
    #include "sintactico1.tab.h"
    int yyparse();
%}

%%
Yo      {return PRON;}
\n      {return NL;}
.       return *yytext;
%%

int yywrap(void)
{
    yyparse();
    yylex();
    return 0;
}
