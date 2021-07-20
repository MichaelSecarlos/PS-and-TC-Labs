%{

#include <string.h>
enum {ENTERO=1, DOUBLE, IDENT, NEW_LINE, OPERATOR,KEYWORD, UNKNOWN, WHITE_SPACE};
char globalValue[0x100];

%}
%option noyywrap

KEYWORDS    [val|var|package|import|fun|for|while|if|else|when|is|in|"!is"|Double|Float|Long|Int|Short|Byte|Char|:]

ENTERO      [0-9]+
DOUBLE      [0-9]+\.[0-9]*|\.[0-9]+
FLOAT       [0-9]+\.[0-9]*]\.[0-9]+
LONG        [0-9]+\.[0-9]*]\.[0-9]+
CHAR        [a-zA-Z]{1}

IDENT       [a-zA-Z_][0-9a-zA-Z_]*
OPERACIONES "+"|"*"|"-"|"/"
WHITESPACE  [ |\t]

%%

{KEYWORDS}              { strcpy(globalValue, yytext); return(KEYWORD); }

{ENTERO}                { strcpy(globalValue, yytext); return(ENTERO); }
{DOUBLE}                { strcpy(globalValue, yytext); return(DOUBLE); }

{IDENT}                 { strcpy(globalValue, yytext); return(IDENT); }
{OPERACIONES}           { strcpy(globalValue, yytext); return(OPERATOR); }
[\n]                    { strcpy(globalValue, yytext); return(NEW_LINE); }
{WHITESPACE}            { strcpy(globalValue, yytext); return(WHITE_SPACE); }
.                       { strcpy(globalValue, yytext); return(UNKNOWN); }

%%


int main()
{
    int token;
    do
    {
        token=yylex();
        switch(token)
        {
            case 0:             fprintf(stderr, "END_OF_FILE\n");                    break;
            case ENTERO:        fprintf(stderr, "Entero [%s]\n", globalValue);       break;
            case DOUBLE:        fprintf(stderr, "Decimal [%s]\n", globalValue);      break;
            case IDENT:         fprintf(stderr, "IDENT [%s]\n", globalValue);        break;
            case NEW_LINE:      fprintf(stderr, "NEW_LINE [%s]\n", globalValue);     break;
            case OPERATOR:      fprintf(stderr, "OPERATOR [%s]\n", globalValue);     break;
            case KEYWORD:       fprintf(stderr, "KEYWORD[%s]\n", globalValue);       break;
            case UNKNOWN:       fprintf(stderr, "UNKNOWN[%s]\n", globalValue);       break;
            case WHITE_SPACE:   fprintf(stderr, "WHITE_SPACE[%s]\n", globalValue);   break;
        }
    } while(token);
    return(0);
}