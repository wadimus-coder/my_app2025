#include <stdio.h>
#include <libloaderapi.h>

int main()
{
    printf("main starts \n");
    HMODULE test_dll = LoadLibrary("test.dll");
    printf("main:test_dll = %p\n", test_dll);

    FreeLibrary(test_dll);
    printf("main ends\n");

    return 0;
}