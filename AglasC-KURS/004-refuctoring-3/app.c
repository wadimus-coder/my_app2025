#include<stdio.h>
#include<string.h>
#include<stdlib.h>

  //function hello()
int hello(char *nickname) //pointer for array nickname[]
{
    int len;
    char c;

    printf("What is your name?\n");
    fgets(nickname,sizeof(nickname),stdin);

    len=strlen(nickname);
      if(nickname[len-1]=='\n')  //short input cleen buffer
           nickname[len-1]='\0';
      else
        {
         while((c=getchar()!='\n') && c!=EOF)  //long input cleen buffer
            ;
        }
        printf("Hello,%s\n",nickname);

        return EXIT_SUCCESS;
}

int main( void)
{
    int goblin_gold=15;
    int player_gold=0;
    int goblin_hp;
    char action;
    char nickname[12];
    
      hello(nickname);
     

    printf("You attackted gy goblin.'A'ttack and 'r'un.\n");
    action=getchar();

    while (action!='r')
    {
      

      if(action=='a'|| action=='A')

        {
            for(goblin_hp=3;goblin_hp>=0;goblin_hp--)
             {
              if(goblin_hp!=3 && goblin_hp!=0)
                 printf("You kicked the goblin.HP = %d\n",goblin_hp);

                if(goblin_hp==0)
                 {
                    printf("The goblin is killed!"
                      " You get %d gold.\n",goblin_gold);
                      player_gold+=goblin_gold;
                    printf("Gold total = %d\n",player_gold);
       
                    break;
                }
             }
        }
       
       printf("Next action?");
       getchar(); //clean buffer
       action=getchar(); 

    }
    if(action=='r')
            printf("You've decided to run away! Good by!\n");

         return EXIT_SUCCESS;
}