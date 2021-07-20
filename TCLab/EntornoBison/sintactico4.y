%{
    #include <stdio.h>
    int yylex();
    int yyerror (char *s);
%}

%token ARTICULO
%token SUJETO
%%
cadena: ARTICULO SUJETO'\n' {printf("Se imprime un articulo seguido por un sujeto\n");};
| cadena ARTICULO SUJETO'\n' {printf("Se imprime un articulo seguido por un sujeto\n");};
%%

int yyerror (char *s)
{
    printf ("%s\n", s);
    return 0;
}
int main()
{
    yyparse();
    return 0;
}