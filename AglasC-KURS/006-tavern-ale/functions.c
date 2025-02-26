
#include "functions.h"

int tavern(int player_gold)
{
    int ale_mug_cost =3;
    if(player_gold>=3)
    {
      printf("You've bought mug of ale for %d gold!\n"
         "Now you have %d gold left\n",ale_mug_cost,player_gold-=ale_mug_cost);
    }
    else 
        printf("You don't have enough gold to buy an ale:(\n");
    return player_gold;
}

//function battle();
int hello(char *nickname)
    {
      int len;
      char c;
       printf("What is your name?\n");
      fgets(nickname,sizeof(nickname),stdin);
      len=strlen(nickname); 

        if(nickname[len-1]=='\n')
          nickname[len-1]='\0';
      else
          while ((c=getchar()!='\n') && c!=EOF )
          ;
            // printf("Hello,%s\n",nickname);
             return 0;
    }
//function battle();
int battle(int player_gold)
{
    srand(time(NULL));
     int goblin_gold=rand()%15
     ;
    for( int goblin_hp=rand()%3;goblin_hp>=0;goblin_hp--)
        { 
            if(goblin_hp!=3 && goblin_hp!=0)
               printf("You kicked the goblin!HP=%d\n",goblin_hp);
              
        
         if (goblin_hp==0)
         {
            printf("Goblin is defeated!\n");
            printf("You get %d gold coins!\n",goblin_gold);
            printf("Gold total =%d\n",player_gold+=goblin_gold);
             break;
         }
        }

  return player_gold;
}