// main.c
#include <stdio.h>

void print_arr(int *arr, int len);

// extern int var1;
// extern int var2;
__attribute__((constructor)) void main_constructor()
{

    int a[] = {1, 3, 44, 5, 7, 7, 88};
    print_arr(a, 7);
}

int main()
{
    printf("main starts\n");

    // printf("var1 = %d\n", var1);
    // printf("var2 =%d\n ", var2);

    printf("main ends\n");
}