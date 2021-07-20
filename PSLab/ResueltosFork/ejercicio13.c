#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>
#include <signal.h>
#include <stdio.h>
#define VUELTAS 100000000000LL

void hijo()
{
    printf("\t\t¡Padre! ¿Que haces?\n");
    printf("\t\tFinal de ejecucion de %d\n",getpid());
    kill(getppid(), SIGUSR1);
    exit(1);
}

void padre()
{
    printf("\t¡Hijo! ¿Que he hecho?\n");
    printf("\tFinal de ejecucion de %d\n",getpid());
    exit(1);
}
int main()
{
    long long int i;
    pid_t rf;
    rf = fork();
    switch (rf)
    {
        case -1:
            printf("No he podido crear al proceso hijo\n");
            break;
        case 0:
            printf("\t\tSoy Isaac, mi PID es %d y mi PPID es %d.\n" , getpid(), getppid());
            signal(SIGUSR1, hijo);
            for(i=0 ; i<VUELTAS ; i++);
            break;
    default:
        printf("\tSoy Abraham, mi PID is %d y el PID de mi hijo es %d.\n", getpid(), rf);
        signal(SIGUSR1 , padre);
        sleep(1);
        printf("Voy a matar a mi hijo\n");
        sleep(15);
        kill(rf, SIGUSR1);
        for(i=0 ; i<VUELTAS ; i++)
        break;
    }
}