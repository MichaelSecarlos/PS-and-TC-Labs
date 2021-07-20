%{
    #include "sintactico4.tab.h"
    int yyparse();
%}
TIPO        (int|double|string)
VARIABLE    [a-zA-Z][a-zA-Z0-9_]*
TERMINAL    [;]
%%
{TIPO}          {return TIPO;}
{VARIABLE}      {return VARIABLE;}  
{TERMINAL}      {return TERMINAL;}  
\n return *yytext;
%%

int yywrap(){ 
    yyparse();
    return 0;
}
