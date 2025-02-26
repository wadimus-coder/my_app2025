#include "functions.h"

int main(void)
{
    
    
    int player_gold=0;
    char action;
    char nickname[12];
    
    hello(nickname);
    
    printf("You attacked by goblin!\n");
    printf("You 'A'ttak or 'r'un:\n");
      action=getchar();

    while(action!='r')
    {

      if(action=='a'|| action=='A')
         {
          player_gold= battle(player_gold); 
         }
    
         printf("Next action:\n");
         getchar();
         action=getchar();
    }
          if(action=='r')
          {
                 printf("You decided to run away! Good by!\n");
                 printf("You earned %d gold coins! Good job!\n",player_gold);
          }
    return 0;
}
