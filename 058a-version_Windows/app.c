// 058
// app.c
#include <stdio.h>
#include <libloaderapi.h>

int main()
{
    char dll_name[50];
    printf("Dll name :");
    scanf("%s", dll_name);
    HMODULE dll_handle = LoadLibrary(dll_name);
    if (dll_handle == 0)
    {
        printf("No such library : %s\n", dll_name);
        return 0;
    }
    int *var_addr = (void *)GetProcAddress(dll_handle, "var");
    printf("var = %d\n", *var_addr);

    FreeLibrary(dll_handle);
    return 0;
}