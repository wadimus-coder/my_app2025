#include <stdio.h>

extern int var1;
extern int var2;

int main()
{

    printf("start main\n");

    printf("var1 = %d\n", var1);
    printf("var2 =%d\n", var2);

    printf("end main\n");

    return 0;
}