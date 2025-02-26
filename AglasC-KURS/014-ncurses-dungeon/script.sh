

gcc -E app.c -o app.i -lncurses 
gcc -S app.i -o app.s -lncurses
gcc -c app.c -lncurses
gcc  app.o -o a -lncurses
gcc app.c -o a -lncurses
./a