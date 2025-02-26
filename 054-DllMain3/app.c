// app.c
#include <stdio.h>
#include <libloaderapi.h>

extern int var1;

int main()
{
    printf("var1 =%d\n", var1);
    HMODULE var2_dll = GetModuleHandle("var2.dll");
    int *ptr_addr = (void *)GetProcAddress(var2_dll, "var2");
    int var2 = *ptr_addr;
    printf("var2= %d\n", var2);

    return 0;
}