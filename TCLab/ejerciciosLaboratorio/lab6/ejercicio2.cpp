#include <iostream>
using namespace std;

enum Color
{
	rojo,verde,azul
};
struct Libro
{
	char titulo[20],autor[20];
	int anio;
	Color color;
};

void datosLibro(Libro[]);
void mostrarLibro(Libro[]);

int main()
{
	Libro libro[3];
	datosLibro(libro);
	mostrarLibro(libro);
	return 0;
}
void datosLibro(Libro libro[3])
{
	for(int i=0 ; i<3 ; i++)
	{
		cout<<"Titulo libro "<<i+1<<endl;
		cin.getline(libro[i].titulo,20);
		cout<<"Autor libro "<<i+1<<endl;
		cin.getline(libro[i].autor,20);
		cout<<"Año libro"<<i+1<<endl;
		cin>>libro[i].anio;
		cin.ignore();
	}
	libro[0].color = rojo;
}

