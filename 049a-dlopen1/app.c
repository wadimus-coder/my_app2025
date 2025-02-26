// 049a-ldopen1
// app.c
#include <stdio.h>
#include <dlfcn.h>

int main()
{
    void *vars_so = dlopen("./vars.so", RTLD_LAZY);
    char var_name[20];
    printf("var name:");
    scanf("%s", var_name);
    float *var_addr = dlsym(vars_so, var_name);
    if (var_addr == 0)
        printf("No such var : %s\n", var_name);
    else
    {

        float value = *var_addr;
        printf("%s =%f\n", var_name, value);
    }
    dlclose(vars_so);

    return 0;
}