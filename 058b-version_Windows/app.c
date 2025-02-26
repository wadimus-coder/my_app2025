// 058b
// app.c
#include <stdio.h>
extern int var;
int main()
{

    printf("var : %d\n", var);
    return 0;
}
/*
C:\Sock_FdCatalog\058b-version_Windows>del app.exe

C:\Sock_FdCatalog\058b-version_Windows>gcc app.c -o app.exe .\var_dll_1\var.dll

C:\Sock_FdCatalog\058b-version_Windows>app.exe

C:\Sock_FdCatalog\058b-version_Windows>set path=C:\Sock_FdCatalog\058b-version_Windows\
var_dll_1

C:\Sock_FdCatalog\058b-version_Windows>echo %path%
C:\Sock_FdCatalog\058b-version_Windows\var_dll_1

C:\Sock_FdCatalog\058b-version_Windows>app.exe

var : 1
*/

// Другой выриант
/*
C:\Sock_FdCatalog\058b-version_Windows>gcc -shared var1.c -o var1.dll

C:\Sock_FdCatalog\058b-version_Windows>gcc app.c -o app.exe .\var1.dll

C:\Sock_FdCatalog\058b-version_Windows>app.exe
var : 1717

C:\Sock_FdCatalog\058b-version_Windows>gcc -shared var1.c -o var1.dll

C:\Sock_FdCatalog\058b-version_Windows>gcc app.c -o app.exe var1.dll

C:\Sock_FdCatalog\058b-version_Windows>app.exe
var : 2025

C:\Sock_FdCatalog\058b-version_Windows>gcc -shared var1.c -o var1.dll

C:\Sock_FdCatalog\058b-version_Windows>app.exe
var : 99999
*/

// Установка версии
/*
C:\Sock_FdCatalog\058b-version_Windows>gcc -shared var1.c -o var1.dll -Wl,--major-image-version=3,--minor-image-version=2=2

C:\Sock_FdCatalog\058b-version_Windows>objdump -p var1.dll >p3.txt

C:\Sock_FdCatalog\058b-version_Windows>notepad p3.txt
*/