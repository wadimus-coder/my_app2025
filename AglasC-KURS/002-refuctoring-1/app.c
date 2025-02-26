#include<stdio.h>
#include<stdlib.h>

int main( void)
{
    int goblin_hp;
    int goblin_gold=15;
    int player_gold=0;
    char action;

    printf("You attacked by goblin.\n'A'ttack or 'r'un away:\n");
    action=getchar();


  for (;action!='r';)//while(action!='r') -такое же действие
  
    {   
  
      if(action=='a'||action=='A')
      {
        for(goblin_hp=3;goblin_hp>=0;goblin_hp--)
        {
            if(goblin_hp!=3 && goblin_hp!=0)
                  printf("You kicked the goblin.HP =%d\n",goblin_hp);

          if(goblin_hp==0)
      {
        printf("You defeated this goblin!\n");
        printf("Get your %d gold coins\n",goblin_gold);
        printf("Gold total =%d\n",player_gold+=goblin_gold);
        break;
      }
       } 
    }
      
      

      printf("Next action? 'a' or 'r'\n");
      getchar();
      action=getchar();
   }
      if(action=='r')
         printf("You've decided to run away!Good by!\n");
    
    return EXIT_SUCCESS;
}