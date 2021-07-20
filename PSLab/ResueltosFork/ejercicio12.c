#include <unistd.h>
#include <stdlib.h>
#include <signal.h>
#define VUELTAS 100000000000LL

void confirmar()
{
    char resp[100];
    write(1, "Quiere terminar? (s/n)", 24);
    read(0, resp, 100);
    if(resp[0] == 's') exit(0);
}
int main()
{
    long long int i;
    signal(SIGINT, SIG_IGN);
    write(1, "No hago caso a CONTROL-C\n", 25);
    for(i=0 ; i<VUELTAS ; i++)
    {
    }
    signal(SIGINT, SIG_IGN);
    write(1, "Ya hago caso a CONTROL-C\n", 25);
}
