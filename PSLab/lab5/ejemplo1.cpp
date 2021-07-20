#include <iostream>

using namespace std;

int main()
{
	int *ptr;
	int var = 20;
	ptr = &var;
	cout << *ptr << endl;
	cout << ptr << endl;
	cout << var << endl;
	return 0;
}
