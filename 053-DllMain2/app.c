#include <stdio.h>
#include <libloaderapi.h>

extern float pi;
extern float e;
extern float sum;

extern int var1;

int main()
{
    /*
     printf("main starts \n");
     HMODULE test_dll = LoadLibrary("test.dll");
     printf("main:test_dll =%p\n", test_dll);

     FreeLibrary(test_dll);
     printf("main ends \n");
 */

    sum = pi + e;
    printf("%f +%f = %f", pi, e, sum);
    return 0;

    return 0;
}