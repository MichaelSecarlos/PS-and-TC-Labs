%{
    #include "sintactico5.tab.h"
    int yyparse();
%}

%%
[a-zA-Z]+   {return VARIABLE;}
['+']       {return SUMA;}
\n          {return NL;}
.           return *yytext;
%%

int yywrap(void)
{
    yyparse();
    yylex();
    return 0;
}
