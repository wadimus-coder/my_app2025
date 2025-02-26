// 045-f_ptr/app.c Урок 49
#include <stdio.h>
int printf(const char *format, ...);

short var1 = 0x1122;
short *addr1 = &var1;

int inc(int a)
{

    return a + 1;
}

void print_arr(int *array, int len)
{

    for (int i = 0; i < len; i++)
        printf("a[%d] : %d\n", i, array[i]);
}
int main()
{

    // short var2 = 0x4455;
    // {

    // short var2 = 0x4455;
    // printf("addr var2 : %p\n", &var2);
    // }
    printf("addr va1 :%p\n", &var1);
    printf("addr1    :%p\n", addr1);
    // printf("addr var2 : %p\n", &var2);
    printf("inc address : %p\n", inc);
    int (*f_ptr)(int) = inc;
    printf("f_ptr address : %p\n", f_ptr);
    int res = f_ptr(7);
    printf("f_ptr = %d\n", res);

    // создаёём указатель на функцию print_arr
    void (*f_pr_arr)(int *, int) = print_arr;
    int a[] = {2, 5, 6, 77, 8, 9, 0};
    f_pr_arr(a, 7);

    // создаёём указатель на функцию printf
    int (*print)(const char *, ...) = printf;
    print("test in %d\n", 2025);

    // создаем обобщённый указатель
    void *addr = printf;
    printf("addr   : %p\n", addr);
    printf("printf : %p\n", printf);

    // void (*v_print)(const char *) = (void (*)(const char *))printf;
    void (*v_print)(const char *) = (void *)printf;
    v_print("Test v_print");

    return 0;
}
// objdump -t app.exe >symtab.txt  (таблица символов)
// gcc -S -g app.c -o app.s