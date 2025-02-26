#include <stdio.h>

struct id
{
    char *name;
    int age;
    char *citizen;
};

struct node
{
    char *item;
    struct item *next;
};

int main(void)
{
    struct id wadim1 = {"Wado", 63, "Israel"};
    // указытель на переменную wadim
    struct id *p_wadim = &wadim1;

    char *name = p_wadim->name;
    int age = p_wadim->age;
    char *sitizen = p_wadim->citizen;

    printf("%s  %d   %s\n", name, age, sitizen);

    p_wadim->age = 25;
    p_wadim->citizen = "Ukraina";
    p_wadim->name = "Tolik";
    printf("%s  %d   %s\n", wadim1.name, wadim1.age, wadim1.citizen);

    struct node wadim = {.item = "Wadim"};
    struct node oleg = {.item = "Oleg"};
    struct node grusha = {.item = "Grusha"};
    struct node cosha = {.item = "Cosha"};

    wadim.next = &oleg;
    oleg.next = &grusha;
    grusha.next = &cosha;

    // устанавливаем указатель на первую структуру в цепочке
    struct node *pointer = &wadim;
    while (pointer != NULL)
    {

        printf("value = %s\n", pointer->item);
        pointer = pointer->next;
    }

    return 0;
}