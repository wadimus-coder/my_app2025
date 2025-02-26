// LoadLibrary

#include <stdio.h>
#include <libloaderapi.h>

int main()

{
    HMODULE test_dll = LoadLibrary("test.dll");
    HMODULE vars_dll = LoadLibrary("vars.dll");

    printf("Function: ");

    char function[50];
    char var_name[30];
    scanf("%s", function);

    void (*f_pointer)(int *, int);
    f_pointer = (void *)GetProcAddress(test_dll, function);
    if (f_pointer == 0)
        printf("No such function : %s\n", function);
    else
    {

        int a[] = {0, 23, 43, 55, 66, 77, 88, 908, 34, -89};
        f_pointer(a, 10);
    }

    printf("Var_name : ");
    scanf("%s", var_name);

    float *var_addr;
    var_addr = (void *)GetProcAddress(vars_dll, var_name);
    if (var_addr == 0)
        printf("No such vars : %s\n", var_name);
    else
    {
        float value = *var_addr;
        printf("%s = %f\n", var_name, value);
    }

    FreeLibrary(test_dll);
    FreeLibrary(vars_dll);

    return 0;
}