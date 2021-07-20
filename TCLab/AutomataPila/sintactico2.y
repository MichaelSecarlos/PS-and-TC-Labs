%{
    #include <stdio.h>
    int yylex();
    int yyerror (char *s);
%}

%token A
%token B
%token NL
%%
cadena: S NL {printf("Se imprime A y doble B\n");};
S: A S B B | ;
cadena: cadena S NL {printf("Se imprime A y doble B\n");};
%%

int yyerror (char *s)
{
    printf("cadena invalida %s\n", s);
    return 0;
}
int main(int argc, char**argv)
{
    printf("Ingrese la cadena\n");
    yyparse();
    return 0;
}
