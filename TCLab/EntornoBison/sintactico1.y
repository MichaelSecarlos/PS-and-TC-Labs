%{
    #include <stdio.h>
    int yylex();
    int yyerror (char *s);
%}

%token ARTICULO
%%
cadena: ARTICULO '\n' {printf("Se imprime un texto \n");}
%%

int yyerror (char *s)
{
    printf("%s\n", s);
    return 0;
}
int main(int argc, char**argv)
{
    yyparse();
    return 0;
}
