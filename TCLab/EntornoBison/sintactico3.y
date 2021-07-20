%{
    #include <stdio.h>
    int yylex();
    int yyerror (char *s);
%}

%token ARTICULO
%token SUJETO
%%
cadena: ARTICULO','ARTICULO'\n' {printf("Se imprime dos articulos separados por comas\n");};
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