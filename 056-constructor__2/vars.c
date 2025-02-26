// vars.c
#include <stdio.h>

int var1;
int var2;

__attribute__((constructor)) void vars_so_constructor()
{
    printf("vars_so_constructor\n");
    var1 = 7;
    var2 = 9;
}

__attribute__((destructor)) void vars_so_destructor()
{

    printf(" vars_so_destructor\n");
}