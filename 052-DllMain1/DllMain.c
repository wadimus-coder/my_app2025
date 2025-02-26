// DllMain.c
#include <stdio.h>
// #include <libloaderapi.h>

void print_arr(int *arr, int len);
void print_line(int *arr, int len);

int DllMain(void *dll_handle)
{

    printf("DllMain :dll_handle = %p\n", dll_handle);
    // void (*ptr)(int *, int);
    // ptr = (void *)GetProcAddress(dll_handle, "print_arr");
    int a[] = {1, 2, 3, 45, 77, 1903};
    print_arr(a, 6);
    print_line(a, 6);
    // ptr(a, 6);
    return 1;
}