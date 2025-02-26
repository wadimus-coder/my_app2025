int printf(const char *format, ...);

void print_arr(int *arr, int len)
{
    for (int i = 0; i < len; i++)
        printf("a[%d]  :%d\n", i, arr[i]);
}