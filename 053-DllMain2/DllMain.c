// DllMain.c
#include <stdio.h>
#include <libloaderapi.h>

extern float pi;
extern float e;
extern float sum;

int DllMain(void *dll_handle, int reason)
{
    // printf("DllMain:reason = %d\n", reason);

    if (reason == 1) // загрузка библиотеки

    {
        // printf("Loading library\n");
        pi = 3.1415;
        e = 2.7000;
    }
    if (reason == 0) // выгрузка библиотеки
    {
        // printf("Unloading library\n");
        FILE *file = fopen("sum.txt", "w");
        fprintf(file, "sum =%f", sum);
        fclose(file);
    }
    return 1;
}