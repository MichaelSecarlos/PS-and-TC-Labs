%{
    #include "sintactico3.tab.h"
    int yyparse();
%}
VARIABLE     [a-zA-Z][a-zA-Z0-9_]*
ASIGNACION   =
ENTERO       [0-9]+
%%
{VARIABLE}      {return VARIABLE;}
{ASIGNACION}    {return ASIGNACION;}  
{ENTERO}        {return ENTERO;}
\n return *yytext;
%%

int yywrap(){ 
    yyparse();
    return 0;
}
