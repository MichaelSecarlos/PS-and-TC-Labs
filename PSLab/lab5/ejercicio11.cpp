#include <iostream>

using namespace std;

int main()
{
	int val[] = {10,20,30,40,50,60};
	int *ptr = val;

	cout<<"Size of arr[] "<<sizeof(val)<<endl;
	cout<<"Size of ptr "<<sizeof(ptr)<<endl;
}
