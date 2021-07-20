%{
    #include <stdio.h>
    int yylex();
    int yyerror (char *s);
%}

%token ARTICULO
%%
cadena: ARTICULO {printf("Se imprime un texto \n");};
| 
cadena ARTICULO {printf("Se imprime un texto \n");};
%%

int yyerror (char *s)
{
    printf ("%s\n", s);
    return 0;
}
int main(int argc, char**arvg)
{
    yyparse();
    return 0;
}