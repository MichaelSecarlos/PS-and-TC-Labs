#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>

int main(int argc, char *argv[])
{
    int i;
    int j;
    pid_t rf;
    rf = fork();
    switch (rf)
    {
        case -1:
            printf("\nNo he podido crear el proceo hijo");
            break;
        case 0:
            i=0;
            printf("\nSoy el hijo, mi PID es %d y mi variable i (inicialmente a %d) es par", getpid(), getppid());
            for(j=0 ; j<5 ; j++)
            {
                i++;
                i++;
                printf("\nSoy el hijo, mi variable i es %d", i);
            }
            break;
        default:
            i=1;
            printf("\nSoy el padre, mi PID es %d, y mi variable i (inicialmente a %d) es impar: ", getpid(), rf);
            for(j=0 ; j<5 ; j++)
            {
                i++;
                i++;
                printf("\nSoy el padre, mi variable i es %d", i);
            }
            break;
    }
    printf("\nFinal de ejecucion de %d\n", getpid());
    exit(0);
}