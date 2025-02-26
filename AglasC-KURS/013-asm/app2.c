#include <stdio.h>

int main()
{
    int a = 7;

    __asm__(
        "mov eax,(8-12)*4;\n"
        "mov %0,eax;\n"
        : "=m"(a));
    printf("%d\n", a + 25);
    return 0;
}