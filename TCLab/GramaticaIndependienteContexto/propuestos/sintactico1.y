%{
    #include <stdio.h>
    int yylex();
    int yyerror (char *s);
%}

%token DOBLEB
%token NL
%%
cadena: DOBLEB NL {printf("Se imprime:\"bb\"\n");};
cadena: cadena DOBLEB NL {printf("Se imprime:\"bb\"\n");};
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
