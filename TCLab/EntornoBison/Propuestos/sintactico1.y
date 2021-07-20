%{
    #include <stdio.h>
    int yylex();
    int yyerror (char *s);
%}

%token NOTAS
%%
cadena: NOTAS '\n' {printf("5 notas seguidas\n");};
| cadena NOTAS '\n' {printf("5 notas seguidas\n");};
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
