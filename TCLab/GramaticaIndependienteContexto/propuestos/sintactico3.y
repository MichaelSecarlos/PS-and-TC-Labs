%{
    #include <stdio.h>
    int yylex();
    int yyerror (char *s);
%}

%token A
%token B
%token NL
%%
cadena: S NL {printf("Se imprime la misma cantidad de \"a\" y \"b\"\n");};
S: A S B | ;
cadena: cadena S NL {printf("Se imprime la misma cantidad de \"a\" y \"b\"\n");};
%%
int yyerror (char *s)
{
    printf("cadena invalida %s\n", s);
    return 0;
}
int main(int argc, char**argv)
{
    printf("Ingrese la misma cantidad de a(s) y b(s)\n");
    yyparse();
    return 0;
}
