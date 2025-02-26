#include <stdio.h>
#include <dlfcn.h>
// void *dlopen(const char *filename, int flag);
// void *dlsym(void *handle, char *symbol);

int main()
{
    void *test_so = dlopen("./test.so", RTLD_LAZY);
    void (*f)(int *, int);
    void (*f1)(int *, int);
    f = dlsym(test_so, "print_arr");
    f1 = dlsym(test_so, "print_line");
    printf("f = %p\n", f);
    printf("f1= %p\n", f1);

    int a[] = {33, 55, 66, 77};
    f(a, 4);
    f1(a, 4);

    printf("\ntest_so = %p\n", test_so);
    if (test_so == 0)
    {
        printf("No such library\n");
        return 0;
    }

    dlclose(test_so);
    return 0;
}