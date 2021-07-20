%{
    #include "sintactico2.tab.h"
    int yyparse();
%}

%%
El|La|Los|Las      {return ARTICULO;}
%%

int yywrap(){ return 0;}
