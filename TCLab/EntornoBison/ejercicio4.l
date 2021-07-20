%{
    #include "sintactico4.tab.h"
    int yyparse();
%}

ART El|Las|Los|Las|Un|Unos|Unas
%%
{ART}   {return ARTICULO;}
[a-z]+   {return SUJETO;}
\n return *yytext;
%%

int yywrap(){ return 0;}
