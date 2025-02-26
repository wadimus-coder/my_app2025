#include <libloaderapi.h>
#include <stdio.h>

int main()
{
    HMODULE test_dll = LoadLibrary("test.dll");
    HMODULE vars_dll = LoadLibrary("vars.dll");

    printf("Function:");
    char function[40];
    scanf("%s", function);

    void (*f_pointer)(int *, int);
    f_pointer = (void *)GetProcAddress(test_dll, function);
    if (f_pointer == 0)
    {
        printf("No such function : %s\n", function);
    }
    else
    {
        int a[] = {0, 0, 23, 45, 98, 1961, 1953, 1991, 2020};
        f_pointer(a, 9);
    }

    printf("var name:");
    char var_name[50];

    scanf("%s", var_name);

    int *f_var;
    f_var = (void *)GetProcAddress(vars_dll, var_name);

    if (f_var == 0)
        printf("No such vars :%s\n", var_name);

    else
    {
        int res = *f_var;
        printf("%s = %d\n", var_name, res);
    }

    FreeLibrary(test_dll);
    FreeLibrary(vars_dll);

    return 0;
}