
gcc -E app.c -o app.i -lpdcurses 
gcc -S app.i -o app.s -lpdcurses
gcc -c app.c -lpdcurses
gcc  app.o -o a -lpdcurses
gcc app.c -o a -lpdcurses
