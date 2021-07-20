%{
    #include "sintactico3.tab.h"
    int yyparse();
%}

%%
El|Las|Los|Las|Un|Unos|Unas         {return ARTICULO;}
,|\n return *yytext;
%%

int yywrap(){ return 0;}
