#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
int main()
{
    pid_t rf;
    rf = fork();
    switch (rf)
    {
    case -1:
        printf("No he podido crear el proceso hijo\n");
        break;
    case 0:
        printf("Soy el hijo, mi PID es %d y mi PPID es %d\n", getpid(), getppid());
        sleep(3);
    default:
        printf("Soy el padre, mi PID es %d y el PID de mi hijo es %d\n", getpid(), rf);
        sleep(3);
        break;
    }
    printf("Final de ejercucion de %d\n", getpid());
    exit(0);
    return 0;
}