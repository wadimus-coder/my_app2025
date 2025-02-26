gcc -E app.c >>app.i
gcc -S app.i -o app.s
gcc -c app.c
gcc  app.o -o a