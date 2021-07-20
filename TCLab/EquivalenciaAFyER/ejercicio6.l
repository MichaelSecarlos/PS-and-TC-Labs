%{
%}
%%
abc*                {printf("Primer caso");}
abc*b*ca(bbb*ca)*   {printf("Segundo caso");}
ac*a                {printf("Tercer caso");}
%%
int yywrap(){};
int main()
{
    printf("Ingrese una cadena\n");
    yylex();
    return 0;
}