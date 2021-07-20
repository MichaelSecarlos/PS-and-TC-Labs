#include <iostream>

using namespace std;

int main()
{
	int val[6] = {1,2,3,4,5,6};
	int *ptr = val;
	for(int i=0 ; i<6 ; i++)
	{
		cout<<"ptr["<<i<<"]="<<ptr[i]<<endl;
	}
	return 0;
}
