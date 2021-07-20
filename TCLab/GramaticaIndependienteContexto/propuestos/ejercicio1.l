%{
    #include "sintactico1.tab.h"
    int yyparse();
%}

%%
bb      {return DOBLEB;}
\n      {return NL;}
.       return *yytext;
%%

int yywrap(void)
{
    yyparse();
    yylex();
    return 0;
}
