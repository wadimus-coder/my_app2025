gcc -E app.c -o app.i -lncurses 
gcc -S -g3 app.i -o app.s -lncurses
gcc -c -g3 app.c -lncurses
gcc  app.o -o a -lncurses
gcc app.c -o a -lncurses