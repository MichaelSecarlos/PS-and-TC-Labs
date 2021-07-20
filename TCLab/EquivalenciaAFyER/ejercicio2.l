%{
%}
%%
^((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[0-9][0-9]|[0-9])(\.)){3}(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])$ {printf("Ha ingresado una direccion ip\n");}
%%
int yywrap(){};
int main()
{
    yywrap();
    printf("Ingrese una direccion ip valida.\n");
    yylex();
    return 0;
}