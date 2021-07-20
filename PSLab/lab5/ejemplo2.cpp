#include <iostream>

using namespace std;

void mostrarDireccion(int &numero)
{
	cout<<"Direccion de &numero "<<&numero<<endl;
}

int main()
{
	int var = 1;
	mostrarDireccion(var);
	return 0;
}

