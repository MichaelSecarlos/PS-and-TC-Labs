#include "persona.h"
int main()
{
	persona obj1;
	char* nombre = "aadsasd";
	obj1.adquirirNombre(nombre);
	obj1.decirNombre();
	obj1.dormir();
	obj1.hablar();
	obj1.contar();
	return 0;

}
