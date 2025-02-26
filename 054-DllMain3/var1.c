#include <stdio.h>
#include <libloaderapi.h>

int var1 = 5;

int DllMain(HMODULE dll_handle, int reason)
{
    if (reason == 1)
        LoadLibrary("./var2.dll");
    if (reason == 0)
    {
        HMODULE var2_dll = GetModuleHandle("./var2.dll");
        FreeLibrary(var2_dll);
    }
    return 1;
}