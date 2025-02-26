gcc -E app.c -o app.i -lpdurses 
gcc  -g3 -S app.i -o app.s -lpdcurses
gcc -g3 -c app.c -lpdcurses
gcc  app.o -o a -lpdcurses
gcc app.c -o ./a.exe -lpdcurses
