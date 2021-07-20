#include <iostream>
#include <cstdlib>
#include <ctime>

using namespace std;

int main()
{
	int valorrnd = 0;
	int valorusr = 0;
	int contador = 0;
	srand(time(NULL));

	valorrnd = 1+rand()%10;

	cout<<"entre 1 - 10";

	cout <<"Acierta!!"<<endl
	
	do
	{
		contador+=1;
		cout<<"Numero entre 1 y 10"<<endl;
		cin >> valorusr;
		if(valorusr == valorrnd)
		{
			cout<<"Ganaste!"<<endl;
			return 0;
		}
		else{
			cout<<"Vuelve a intentar"<<endl;
		}
	}
	while(contador < 2);
	if(contador == 2)
	{
		cout<<"Perdiste"<<endl;
	}

}
