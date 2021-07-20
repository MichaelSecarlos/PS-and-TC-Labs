%{
    #include <stdio.h>
    int yylex();
    int yyerror (char *s);
%}

%token APERTURA
%token TEXTO
%token CIERRE
%%
cadena: APERTURA TEXTO CIERRE '\n' {printf("Texto entre parentesis\n");};
| cadena APERTURA TEXTO CIERRE '\n' {printf("Texto entre parentesis\n");};
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
