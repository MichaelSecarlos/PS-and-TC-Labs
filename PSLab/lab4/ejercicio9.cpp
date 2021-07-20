#include <iostream>
#include <cstdlib>

using namespace std;

int main()
{
	int a;
	int limite1 = 10;
	int limite2 = 1500;
	int limite3 = 65536;
	a = rand();
	cout<<a+limite1<<endl;
	cout<<a+limite2<<endl;
	cout<<a+limite3<<endl;

	cout<<"\n\nRAND MAX para este equipo tiene un valor de: "<<RAND_MAX;
	return 0;
}
