%{
    #include <stdio.h>
    int yylex();
    int yyerror (char *s);
%}

%token A
%token B
%token NL
%%
cadena: paresA paresB NL {printf("Se imprime pares de \"a\" y junto a pares de \"b\"\n");};
paresA: A A paresA | ;
paresB: B B paresB | ; 
;
cadena: cadena paresA paresB NL {printf("Se imprime pares de \"a\" y junto a pares de \"b\"\n");};
%%

int yyerror (char *s)
{
    printf("cadena invalida %s\n", s);
    return 0;
}
int main(int argc, char**argv)
{
    printf("Ingrese la cadena de pares de a y pares de b\n");
    yyparse();
    return 0;
}
