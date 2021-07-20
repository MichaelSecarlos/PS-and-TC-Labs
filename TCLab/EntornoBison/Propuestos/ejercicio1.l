%{
    #include "sintactico1.tab.h"
    int yyparse();
%}
NOTAS ((do|DO|re|RE|mi|MI|fa|FA|so|SO|la|LA|si|SI)[ ]*){5}
%%
{NOTAS}           {return NOTAS;}  
\n return *yytext;
%%

int yywrap(){ 
    yyparse();
    return 0;
}
