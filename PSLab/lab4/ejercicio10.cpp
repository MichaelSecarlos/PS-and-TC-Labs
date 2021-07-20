#include <iostream>
#include <cstdlib>

using namespace std;

int main()
{
	int a;
	a = rand();
	cout<<a%98+1<<endl;
	cout<<a%74+25<<endl;
	cout<<a%50<<endl;

	cout<<"\n\nRAND MAX para este equipo tiene un valor de: "<<RAND_MAX;
	return 0;
}
