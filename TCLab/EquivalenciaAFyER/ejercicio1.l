%{
%}
%%
("+"|"-")[0-9]+ {printf("Ha ingresado un numero entero con signo\n");}
%%
int yywrap(){};
int main()
{
    yywrap();
    printf("Ingrese un numero entero especificando su signo \n");
    yylex();
    return 0;
}