
gcc -E app.c -o app.i -lpdcurses 
gcc -S -g3 app.i -o app.s -lpdcurses
gcc  -c -g3 app.c -lpdcurses
gcc  app.o -o a -lpdcurses
gcc app.c -o a.exe -lpdcurses