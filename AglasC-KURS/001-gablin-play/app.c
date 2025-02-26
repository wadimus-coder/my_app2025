#include<stdio.h>

int main( void)
{
    int gold=15;
    int goblin_hp=3;
    char action;

    printf("You attackted gy goblin.'A'ttack and 'r'un.HP =%d\n",goblin_hp);
    action=getchar();

    while ((action!='r'))
    {
      if(action=='a'||action=='A')
        {
        printf("You kicked the goblin.HP = %d\n",goblin_hp--);
      
        }
     if(goblin_hp<=0)
       {
       printf("The goblin is killed! You get %d gold\n",gold);
       break;
       }
     
       printf("Next action?");
       getchar(); //clean buffer
       action=getchar(); 
    }
    if(action=='r')
            printf("You've decided to run away! Good by!");
    return 0;
}