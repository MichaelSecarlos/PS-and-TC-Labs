%{
    #include <stdio.h>
    int yylex();
    int yyerror (char *s);
%}

%token VARIABLE
%token ASIGNACION
%token ENTERO
%%
cadena: VARIABLE ASIGNACION ENTERO '\n' {printf("Asignacion de un entero\n");};
| cadena VARIABLE ASIGNACION ENTERO '\n' {printf("Asignacion de un entero\n");};
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
