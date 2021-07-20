%{
    #include <stdio.h>
    int yylex();
    int yyerror (char *s);
%}

%token VARIABLE
%token NUMERO
%token SUMA
%token NL
%%
cadena: operacion NL {printf("Se imprime una suma de variable y numero\n");};
operacion: VARIABLE SUMA NUMERO | NUMERO SUMA VARIABLE;
cadena: cadena operacion NL {printf("Se imprime una suma de variable y numero\n");};
%%
int yyerror (char *s)
{
    printf("cadena invalida %s\n", s);
    return 0;
}
int main(int argc, char**argv)
{
    printf("Ingrese una suma de variable y numero (o al revez)\n");
    yyparse();
    return 0;
}
