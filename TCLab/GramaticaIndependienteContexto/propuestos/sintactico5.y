%{
    #include <stdio.h>
    int yylex();
    int yyerror (char *s);
%}

%token VARIABLE
%token SUMA
%token NL
%%
cadena: VARIABLE SUMA VARIABLE NL {printf("Se imprime una suma de variables\n");};
cadena: cadena VARIABLE SUMA VARIABLE NL {printf("Se imprime una suma de variables\n");};
%%
int yyerror (char *s)
{
    printf("cadena invalida %s\n", s);
    return 0;
}
int main(int argc, char**argv)
{
    printf("Ingrese una suma de variables\n");
    yyparse();
    return 0;
}
