int printf(const char *format, ...);

void print_arr(int *array, int len)
{
    for (int i = 0; i < len; i++)
        printf("a[%d] : %d\n", i, array[i]);
}