#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>

int main(int argc, char *argv[])
{
    int i;
    char a[200000];
    printf("Ejecutando el programa invocado(ejercicio8). Sus argumentos son:\n");
    for(i=0 ; i<argc ; i++)
        printf("argv[%d]: %s\n" , i , argv[i]);
    sleep(3);
    exit(0);
    return 0;
}