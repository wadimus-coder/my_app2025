int printf(const char *format, ...);

void print_line(int *arr, int len)
{
    for (int i = 0; i < len; i++)
        printf("%d  ", arr[i]);
}