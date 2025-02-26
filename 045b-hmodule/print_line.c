int printf(const char *format, ...);

void print_line(int *array, int len)
{

    for (int i = 0; i < len; i++)
        printf("%d  ", array[i]);
}