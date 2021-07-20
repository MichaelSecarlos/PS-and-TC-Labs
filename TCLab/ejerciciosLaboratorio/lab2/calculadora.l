%{

int flag_operador1=0,flag_operador2=0, flag_operator=0;
void evaluate();
float operador1=0, operador2=0, respuesta=0;
char * operator;
int potencia(int a , int b);

%}

DIGIT [0-9]
OPERATOR ([-+/*^%])
NUM {DIGIT}+(\.{DIGIT}+)?
%%
{NUM}   {
    if (flag_operador1 == 0)
    {
        operador1 = atof(yytext);
        flag_operador1 = 1;
        printf("operador 1: %0.2f\n", operador1);
    }
    else if(flag_operador2 == 0)
    {
        operador2 = atof(yytext);
        flag_operador2 = 1;
        printf("operador 2: %0.2f\n", operador2);
    }
    if((flag_operador1 == 1) && (flag_operador2 == 1)) 
    {
        flag_operador1 = 0;
        flag_operador2 = 0;
    }
}
{OPERATOR} {
    if(flag_operator == 0)
    {
        operator = yytext;
        flag_operator = 1;
    }
}
[\n] {
    evaluate();
    flag_operador1 = 0;
    flag_operador2 = 0;
    flag_operator = 0;
    operador1 = 0;
    operador2 = 0;
    operator = 0;
}
%%
int potencia(int a , int b)
{
    if(b == 0)
    {
        return 1;
    }
    int result = 1;
    for(int i=0 ; i<b ; i++)
    {
        result *= a;
    }
    return result;
}

int yywrap(){}
int main()
{
    yylex();
    return 0;
}
void evaluate()
{
    if(flag_operador1 == 0 && flag_operador2 == 0 && flag_operator == 0)
    {
        printf("No se reconoce la operación");
        return;
    }
    float resultado;
    switch(*operator)
    {
        case '+':
            printf("Suma\n");
            resultado = operador1 + operador2;
        break;
        case '-':
            printf("Resta\n");
            resultado = operador1 - operador2;
        break;
        case '*':
            printf("Multiplicacion\n");
            resultado = operador1 * operador2;
        break;
        case '/':
            printf("Division\n");
            resultado = operador1 / operador2;
        break;
        case '%':
            printf("Modulo\n");
            int operadorEntero1 = operador1;
            int operadorEntero2 = operador2;
            resultado = operadorEntero1%operadorEntero2;
        break;
        case '^':
            printf("Potencia\n");
            resultado = potencia(operador1 , operador2);
        break;
    }
    if(*operator == '/' && operador2 == 0)
    {
        printf("Division por cero! Sin resultados que mostrar\n");
    }
    else
    {
        printf("El resultado de operar %0.2f %c %0.2f = %0.2f \n", operador1, *operator ,operador2, resultado);
    }
    printf("____________________________________\n\n");
}