#include "game.h"
#include "functions.h"

char nickname[12];

int game(void)
{
   
int player_gold=0;
    char action;
    
    
    hello(nickname);
    printf("Hi,%s!What do you want to do today?\n"
    "Go to the forest to 'h'unt goblins or to drink\n"
    "ale in the 't'avern or 'q'uit?\n",nickname);
    
    
      action=getchar();

    while(action!='q')
    {

      if(action=='h'|| action=='H')
         {
          player_gold= battle(player_gold); 
         }
         else if(action=='t')
         {

        player_gold=tavern(player_gold);

         }          
    
         printf("Next action:'H'unt or 't'avern or 'q'uit\n");
         getchar();
         action=getchar();
    }
     if(action=='q')
          {        
             printf("You earned %d gold coins! See you tomorrrow!\n",player_gold);
          }     


    return 0;
}
