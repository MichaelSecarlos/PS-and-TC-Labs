%{
    #include "sintactico3.tab.h"
    int yyparse();
%}

%%
a       {return A;}
b       {return B;}
\n      {return NL;}
.       return *yytext;
%%

int yywrap(void)
{
    yyparse();
    yylex();
    return 0;
}
