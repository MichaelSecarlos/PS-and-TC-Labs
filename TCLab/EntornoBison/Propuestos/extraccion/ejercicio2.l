%{
    #include "sintactico2.tab.h"
    int yyparse();
%}
APERTURA    \(
CIERRE      \)
TEXTO       [a-zA-Z0-9]*
%%
{APERTURA}           {return APERTURA;}
{CIERRE}           {return CIERRE;}  
{TEXTO}           {return TEXTO;}
\n return *yytext;
%%

int yywrap(){ 
    yyparse();
    return 0;
}
