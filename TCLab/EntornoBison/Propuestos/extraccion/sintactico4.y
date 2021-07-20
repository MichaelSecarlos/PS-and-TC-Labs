%{
    #include <stdio.h>
    int yylex();
    int yyerror (char *s);
%}

%token TIPO
%token VARIABLE
%token TERMINAL
%%
cadena: TIPO VARIABLE TERMINAL'\n' {printf("Declaracion de una variable\n");};
| cadena TIPO VARIABLE TERMINAL'\n' {printf("Declaracion de una variable\n");};
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
