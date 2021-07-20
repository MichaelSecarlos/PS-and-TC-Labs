%{
    #include "sintactico5.tab.h"
    int yyparse();
%}

ART El|Las|Los|Las|Un|Unos|Unas
VER come
%%
{ART}           {return ARTICULO;}  
[a-z]+          {return SUJETO;}
{VER}           {return VERBO;}
\n return *yytext;
%%

int yywrap(){ 
    yyparse();
    return 0;
}
