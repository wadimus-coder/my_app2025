// app.c
#include <stdio.h>
#include <dlfcn.h>

int main()
{
    printf("main start\n");

    void *vars_so = dlopen("./vars.so", RTLD_LAZY);
    printf("vars_so : %p\n", vars_so);

    int *var1_addr = dlsym(vars_so, "var1");
    int *var2_addr = dlsym(vars_so, "var2");
    printf("var1 = %d\n", *var1_addr);
    printf("var2 = %d\n", *var2_addr);

    dlclose(vars_so);
    printf("main ends\n");

    return 0;
}