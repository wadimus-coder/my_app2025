
// app.c
/*
#include <stdio.h>

void print_arr(int *array, int len);
void print_line(int *array, int len);

int main()
{
    printf("main start\n");

    int a[] = {2, 55, 77, 88, 99, 12345};
    print_arr(a, 6);
    print_line(a, 6);
    printf("\n");
    printf("main end\n");
    return 0;
}
    */

#include <stdio.h>
#include <libloaderapi.h>

int main()
{
    printf("main start\n");
    HMODULE test_dll = LoadLibrary("test.dll");
    printf("test_dll : %p\n", test_dll);
    if (test_dll == 0)
        return 0;

    void (*print_arr)(int *, int);
    void (*print_line)(int *, int);

    print_arr = (void *)GetProcAddress(test_dll, "print_arr");
    print_line = (void *)GetProcAddress(test_dll, "print_line");

    int a[] = {1, 4, 55, 6, 77, 8};
    print_arr(a, 6);
    print_line(a, 6);

    FreeLibrary(test_dll);
    printf("Main ends\n");

    return 0;
}