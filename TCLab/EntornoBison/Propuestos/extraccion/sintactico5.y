%{
    #include <stdio.h>
    int yylex();
    int yyerror (char *s);
%}

%token IF
%token APERTURA
%token VARIABLE
%token OPERADOR
%token CIERRE
%%
cadena: IF APERTURA VARIABLE OPERADOR VARIABLE CIERRE'\n' {printf("Comparacion con if\n");};
| cadena IF APERTURA VARIABLE OPERADOR VARIABLE CIERRE'\n' {printf("Comparacion con if\n");};
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
