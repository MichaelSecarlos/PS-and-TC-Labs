%{
    #include "sintactico5.tab.h"
    int yyparse();
%}
IF          if
APERTURA    \(
VARIABLE    [a-zA-Z][a-zA-Z0-9_]*
OPERADOR    (==|<=|>=|<|>)
CIERRE      \)
%%
{IF}            {return IF;}
{APERTURA}      {return APERTURA;}
{VARIABLE}      {return VARIABLE;}  
{OPERADOR}      {return OPERADOR;}
{CIERRE}        {return CIERRE;}
\n return *yytext;
%%

int yywrap(){ 
    yyparse();
    return 0;
}
