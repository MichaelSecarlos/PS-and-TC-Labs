#include "persona.h"

void persona::dormir()
{
	std::cout<<"Durmiendo.."<<std::endl;	
}
void persona::hablar()
{
	std::cout<<"Hablando.."<<std::endl;
}
void persona::contar()
{
	std::cout<<"Contando.."<<std::endl;
}
void persona::adquirirNombre(char* name)
{
	this->name = name;
}
void persona::decirNombre()
{
	std::cout<<"Mi nombre es: "<<this->name<<std::endl;
}
