#include <stdio.h>
#include <libloaderapi.h>

int main(void)
{

    HMODULE test_dll = LoadLibrary("test");
    HMODULE var_dll = LoadLibrary("vars");

    printf("test_dll : %p\n", test_dll);

    printf("Function:");
    char function[48];
    scanf("%s", function);

    void (*pointer)(int *, int);
    pointer = (void *)GetProcAddress(test_dll, function);
    if (pointer == 0)
    {
        printf("No such function\n", function);
    }
    else
    {
        int a[] = {0, 23, 12, 354, -90, -54, 1980};
        pointer(a, 7);
    }

    printf("name_int : ");
    char var_name[30];

    scanf("%s", var_name);

    int(*p_vars);
    p_vars = (void *)GetProcAddress(var_dll, var_name);
    if (p_vars == 0)
    {
        printf("No such vars\n", var_name);
    }
    else
    {

        int value = *p_vars;
        printf("%s = %d\n", var_name, value);
    }

    FreeLibrary(test_dll);
    FreeLibrary(var_dll);
    return 0;
}