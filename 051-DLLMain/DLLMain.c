// DLLMain.c
#include <stdio.h>
int DllMain(void *dll_handle)
{
    /*
      int status;

      FILE *file = fopen("./status.txt", "r");
      fscanf(file, "status =%d", &status);
      fclose(file);
      printf("DllMain : status: %d\n", status);
      return status;
      */
    printf("DllMain:dll_handle = %p\n", dll_handle);
    return 1;
}