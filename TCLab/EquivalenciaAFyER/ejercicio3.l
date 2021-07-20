%{
%}
%%
[https?:\/\/[www\.]?]?[a-zA-Z0-9_]+\.com   {printf("Se ha detectado una url que termina en .com\n");}
%%
int yywrap(){};
int main()
{
    printf("Ingrese un texto con una url que termine en .com\n");
    yylex();
    return 0;
}