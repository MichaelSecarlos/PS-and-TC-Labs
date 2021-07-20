#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main(int argc, char *argv[])
{
    printf("Ejecutando el programa invocador (ejercicio7). Sus argumentos son: ");
    for(int i=0 ; i<argc ; i++)
        printf("argv[%d]: %s\n" , i , argv[i]);

    sleep(10);
    strcpy(argv[0], "ejercicio8");
    if(execv ("./ejercicio8", argv) < 0)
    {
        printf("Error en la invocacion a ejercicio8");
        exit(1);
    }
    exit(0);
    return 0;
}