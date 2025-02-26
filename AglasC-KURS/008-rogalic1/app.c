#include<stdio.h>//printf() getchar()
#include<conio.h>//getch()
#include<windows.h>//system()

int main()
{
  int x,y;//coords
  int xx=12,yy=7; //player coords
  char action; //wasd

do 
{
    system("cls");

          if(action=='w')yy--;
     else if(action=='s')yy++;
     else if(action=='a')xx--;
     else if(action=='d')xx++;

   
  for(y=0;y<=20;y++)
  {
    for(x=0;x<=30;x++) 
     { 

       if(x==xx && y==yy)
          printf("@");

       else if(y==0 || y==20)
       {
        printf("#");
        if(x==30)
          printf("\n");
       }
        else if (x==0)
          printf("#");
          else if (x==30)
          {
            printf("#\n");
          }
            else
                printf(" ");        
        
    
  }
 }
}
  while (action=getch());
  
 return 0;

}