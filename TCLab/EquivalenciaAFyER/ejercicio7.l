%{
%}
%%
yyy*                            {printf("Primer caso\n")}
yyy*yxyy*                       {printf("Segundo caso\n")}
yyy*yx(yy*yx)yxyyy*             {printf("Tercer caso\n")}
yyy*yx(yy*yx)yxxx*yy*           {printf("Cuarto caso\n")}
yyy*yx                          {printf("Quinto caso\n")}
yyy*yx(yy*yx)*yx                {printf("Sexto caso\n")}
yyy*yx(yy*yx)yxxx*yy*yx(yy*yx)* {printf("Septimo caso\n")}
yyy*yx(yy*yx)yxxx*yy*           {printf("Octavo caso\n")}
%%
int yywrap(){};
int main()
{
    printf("Ingrese una cadena\n");
    yylex();
    return 0;
}