#include <iostream>

using namespace std;

void cuadrado3(int &n)
{
	cout<<"direccion de n3 cuadrado3(): "<<&n<<"\n";
	n*=n;
}
void alumnos()
{
	int n3 = 0;
	cout<<"direccion de n3 en la funcoin principal: "<<&n3 <<"\n";
	cuadrado3(n3);
	cout<<"Cuadrado de n3: "<< n3 <<"\n";
	cout<<"Cambio reflejado en n3: " << "\n";
}

int main()
{
	alumnos();	
}
