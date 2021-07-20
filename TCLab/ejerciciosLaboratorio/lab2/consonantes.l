%{

int flag_operador1=0,flag_operador2=0, flag_operator=0;
void evaluate();
float operador1=0, operador2=0, respuesta=0;
char * operator;

%}
%%

^[aeiou]    {printf("Es consonante");}

%%

int yywrap(){}