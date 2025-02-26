#include <stdio.h>
#include <libloaderapi.h>

int main(void)
{
    HMODULE test_dll = LoadLibrary("test");
    HMODULE vars_dll = LoadLibrary("vars");

    printf("Function:");
    char function[50];
    scanf("%s", function);

    void (*pointer)(int *, int);
    pointer = (void *)GetProcAddress(test_dll, function);

    if (pointer == 0)
    {

        printf("No such function :%s\n", function);
    }
    else
    {

        int a[] = {1, 4, 5, 6, 7, 8, 9, 8, 9, 0, 1980};
        pointer(a, 11);
    }

    puts("______________________");

    printf("var name :");
    char var_name[39];
    scanf("%s", var_name);

    float *pointer2;
    pointer2 = (void *)GetProcAddress(vars_dll, var_name);
    if (pointer2 == 0)
    {
        printf("No such var : %s\n", var_name);
    }
    else
    {

        float volume = *pointer2;
        printf("%s = %f\n", var_name, volume);
    }

    FreeLibrary(test_dll);
    FreeLibrary(vars_dll);

    return 0;
}