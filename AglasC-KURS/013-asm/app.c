#include <stdio.h>

int main()
{
    int a = 0;
    __asm__(
        "movl $90,%%eax;\n"
        "movl %%eax,%0;\n"
        : "=m"(a)

    );
    printf("%d\n", a - 80);
    return 0;
}