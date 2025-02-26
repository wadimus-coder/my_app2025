#include<stdio.h>       //printf() getchar()
#include<conio.h>      //getch()
#include<windows.h>   //system()
#include<stdlib.h>   //rand()

int main()
{
  int x,y;             //coords
  int xx=12,yy=7;     //player coords
  int tx=5,ty=8;   //goblin coords
  int gold=0;
  int gold_total=0;   
  char action;      //wasd-кнопки
  char map[31][21];//map coords
  char flag_defeat;

do 
{
    system("cls");//clear buffer

    //movement checks

     if     (action=='w' && map[xx][yy-1] !='#') yy--;
     else if(action=='s' && map[xx][yy+1] !='#')yy++;
     else if(action=='a' && map[xx-1][yy] !='#')xx--;
     else if(action=='d' && map[xx+1][yy] !='#')xx++;

     //fight
     if(xx==tx && yy==ty)
     {
      tx=(rand()%28)+1;
      ty=(rand()%18)+1;
      gold=(rand()%5)+1;
      gold_total+=gold;
      flag_defeat=1;
     }

   //dungeon building
      for(y=0;y<=20;y++)
        {
        for(x=0;x<=30;x++) 
        { 

           if(x==xx && y==yy)
                printf("@");
           else if(x==tx && y==ty)
               printf("t");

       else if(y==0 || y==20)
       {
        printf("#");
        map[x][y]='#';
       
        if(x==30)
          printf("\n");
       }
        else if (x==0)
        {
          printf("#");
          map[x][y]='#';
        }
          else if (x==30)
          {
            printf("#\n");
            map[x][y]='#';
          }
            else
               {
                 printf(" "); 
                 map[x][y]=' ';
               }       
         }
    }
    if(flag_defeat)
      {
        printf("You defeated a goblin and get %d coins\n",gold);
        printf("Gold :%d",gold_total);
        flag_defeat=0;
      }
    else
      {

        printf("Gold :%d",gold_total);
      }
  }
   while (action=getch());
  
     return 0;

}