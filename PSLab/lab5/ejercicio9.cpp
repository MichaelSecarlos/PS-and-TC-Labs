#include <iostream>

using namespace std;

int main()
{
	int val[3] = {5,10,20};
	int* ptr = val;
	cout<<"Los elementos del arreglo son:"<<endl;
	cout<<ptr[0]<<" "<<ptr[1]<<" "<<ptr[2]<<endl;
}
