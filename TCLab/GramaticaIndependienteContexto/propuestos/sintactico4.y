%{
    #include <stdio.h>
    int yylex();
    int yyerror (char *s);
%}

%token NUMERO
%token SUMA
%token NL
%%
cadena: NUMERO SUMA NUMERO NL {printf("Se imprime una suma de numeros\n");};
cadena: cadena NUMERO SUMA NUMERO NL {printf("Se imprime una suma de numeros\n");};
%%
int yyerror (char *s)
{
    printf("cadena invalida %s\n", s);
    return 0;
}
int main(int argc, char**argv)
{
    printf("Ingrese una suma de numeros\n");
    yyparse();
    return 0;
}
