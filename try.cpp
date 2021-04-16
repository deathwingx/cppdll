#include <iostream>
#include <dlfcn.h>
#include "steamSearch.h"

using namespace std;

int main()
{
	void *handle;
	handle = dlopen("libsteamSearch.so", RTLD_LAZY);
	if (!handle)
	{
		exit(1);
	}
	dlerror();
	steamSearch s;
	s.test();
	dlclose(handle);
}