# 1 "app.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "app.c"
# 1 "c:\\mingw\\include\\curses.h" 1 3
# 43 "c:\\mingw\\include\\curses.h" 3
# 1 "c:\\mingw\\lib\\gcc\\mingw32\\6.3.0\\include\\stdarg.h" 1 3 4
# 40 "c:\\mingw\\lib\\gcc\\mingw32\\6.3.0\\include\\stdarg.h" 3 4

# 40 "c:\\mingw\\lib\\gcc\\mingw32\\6.3.0\\include\\stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 99 "c:\\mingw\\lib\\gcc\\mingw32\\6.3.0\\include\\stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 44 "c:\\mingw\\include\\curses.h" 2 3
# 1 "c:\\mingw\\lib\\gcc\\mingw32\\6.3.0\\include\\stddef.h" 1 3 4
# 149 "c:\\mingw\\lib\\gcc\\mingw32\\6.3.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "c:\\mingw\\lib\\gcc\\mingw32\\6.3.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 328 "c:\\mingw\\lib\\gcc\\mingw32\\6.3.0\\include\\stddef.h" 3 4
typedef short unsigned int wchar_t;
# 426 "c:\\mingw\\lib\\gcc\\mingw32\\6.3.0\\include\\stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
# 45 "c:\\mingw\\include\\curses.h" 2 3
# 1 "c:\\mingw\\include\\stdio.h" 1 3
# 38 "c:\\mingw\\include\\stdio.h" 3
       
# 39 "c:\\mingw\\include\\stdio.h" 3
# 56 "c:\\mingw\\include\\stdio.h" 3
# 1 "c:\\mingw\\include\\_mingw.h" 1 3
# 55 "c:\\mingw\\include\\_mingw.h" 3
       
# 56 "c:\\mingw\\include\\_mingw.h" 3
# 66 "c:\\mingw\\include\\_mingw.h" 3
# 1 "c:\\mingw\\include\\msvcrtver.h" 1 3
# 35 "c:\\mingw\\include\\msvcrtver.h" 3
       
# 36 "c:\\mingw\\include\\msvcrtver.h" 3
# 67 "c:\\mingw\\include\\_mingw.h" 2 3






# 1 "c:\\mingw\\include\\w32api.h" 1 3
# 35 "c:\\mingw\\include\\w32api.h" 3
       
# 36 "c:\\mingw\\include\\w32api.h" 3
# 59 "c:\\mingw\\include\\w32api.h" 3
# 1 "c:\\mingw\\include\\sdkddkver.h" 1 3
# 35 "c:\\mingw\\include\\sdkddkver.h" 3
       
# 36 "c:\\mingw\\include\\sdkddkver.h" 3
# 60 "c:\\mingw\\include\\w32api.h" 2 3
# 74 "c:\\mingw\\include\\_mingw.h" 2 3
# 57 "c:\\mingw\\include\\stdio.h" 2 3
# 69 "c:\\mingw\\include\\stdio.h" 3
# 1 "c:\\mingw\\lib\\gcc\\mingw32\\6.3.0\\include\\stddef.h" 1 3 4
# 357 "c:\\mingw\\lib\\gcc\\mingw32\\6.3.0\\include\\stddef.h" 3 4
typedef short unsigned int wint_t;
# 70 "c:\\mingw\\include\\stdio.h" 2 3
# 94 "c:\\mingw\\include\\stdio.h" 3
# 1 "c:\\mingw\\include\\sys/types.h" 1 3
# 34 "c:\\mingw\\include\\sys/types.h" 3
       
# 35 "c:\\mingw\\include\\sys/types.h" 3
# 62 "c:\\mingw\\include\\sys/types.h" 3
  typedef long __off32_t;




  typedef __off32_t _off_t;







  typedef _off_t off_t;
# 91 "c:\\mingw\\include\\sys/types.h" 3
  typedef long long __off64_t;






  typedef __off64_t off64_t;
# 115 "c:\\mingw\\include\\sys/types.h" 3
  typedef int _ssize_t;







  typedef _ssize_t ssize_t;
# 95 "c:\\mingw\\include\\stdio.h" 2 3
# 210 "c:\\mingw\\include\\stdio.h" 3
typedef struct _iobuf
{
  char *_ptr;
  int _cnt;
  char *_base;
  int _flag;
  int _file;
  int _charbuf;
  int _bufsiz;
  char *_tmpfname;
} FILE;
# 239 "c:\\mingw\\include\\stdio.h" 3
extern __attribute__((__dllimport__)) FILE _iob[];
# 252 "c:\\mingw\\include\\stdio.h" 3








 __attribute__((__cdecl__)) __attribute__((__nothrow__)) FILE * fopen (const char *, const char *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) FILE * freopen (const char *, const char *, FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int fflush (FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int fclose (FILE *);






 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int remove (const char *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int rename (const char *, const char *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) FILE * tmpfile (void);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char * tmpnam (char *);


 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char *_tempnam (const char *, const char *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _rmtmp (void);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _unlink (const char *);
# 289 "c:\\mingw\\include\\stdio.h" 3
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char * tempnam (const char *, const char *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int rmtmp (void);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int unlink (const char *);



 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int setvbuf (FILE *, char *, int, size_t);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) void setbuf (FILE *, char *);
# 342 "c:\\mingw\\include\\stdio.h" 3
extern int __attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__format__(__mingw_printf__,2,3))) __mingw_fprintf(FILE*, const char*, ...);
extern int __attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__format__(__mingw_printf__,1,2))) __mingw_printf(const char*, ...);
extern int __attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__format__(__mingw_printf__,2,3))) __mingw_sprintf(char*, const char*, ...);
extern int __attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__format__(__mingw_printf__,3,4))) __mingw_snprintf(char*, size_t, const char*, ...);
extern int __attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__format__(__mingw_printf__,2,0))) __mingw_vfprintf(FILE*, const char*, __builtin_va_list);
extern int __attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__format__(__mingw_printf__,1,0))) __mingw_vprintf(const char*, __builtin_va_list);
extern int __attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__format__(__mingw_printf__,2,0))) __mingw_vsprintf(char*, const char*, __builtin_va_list);
extern int __attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__format__(__mingw_printf__,3,0))) __mingw_vsnprintf(char*, size_t, const char*, __builtin_va_list);
# 376 "c:\\mingw\\include\\stdio.h" 3
extern unsigned int _mingw_output_format_control( unsigned int, unsigned int );
# 453 "c:\\mingw\\include\\stdio.h" 3
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int fprintf (FILE *, const char *, ...);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int printf (const char *, ...);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int sprintf (char *, const char *, ...);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int vfprintf (FILE *, const char *, __builtin_va_list);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int vprintf (const char *, __builtin_va_list);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int vsprintf (char *, const char *, __builtin_va_list);
# 478 "c:\\mingw\\include\\stdio.h" 3
 int __attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__format__(__ms_printf__,2,3))) __msvcrt_fprintf(FILE *, const char *, ...);
 int __attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__format__(__ms_printf__,1,2))) __msvcrt_printf(const char *, ...);
 int __attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__format__(__ms_printf__,2,3))) __msvcrt_sprintf(char *, const char *, ...);
 int __attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__format__(__ms_printf__,2,0))) __msvcrt_vfprintf(FILE *, const char *, __builtin_va_list);
 int __attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__format__(__ms_printf__,1,0))) __msvcrt_vprintf(const char *, __builtin_va_list);
 int __attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__format__(__ms_printf__,2,0))) __msvcrt_vsprintf(char *, const char *, __builtin_va_list);






 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _snprintf (char *, size_t, const char *, ...);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _vsnprintf (char *, size_t, const char *, __builtin_va_list);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _vscprintf (const char *, __builtin_va_list);
# 501 "c:\\mingw\\include\\stdio.h" 3
__attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__format__(__mingw_printf__,3,4)))
int snprintf (char *, size_t, const char *, ...);

__attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__format__(__mingw_printf__,3,0)))
int vsnprintf (char *, size_t, const char *, __builtin_va_list);

__attribute__((__cdecl__)) __attribute__((__nothrow__))
int vscanf (const char * __restrict__, __builtin_va_list);

__attribute__((__cdecl__)) __attribute__((__nothrow__))
int vfscanf (FILE * __restrict__, const char * __restrict__, __builtin_va_list);

__attribute__((__cdecl__)) __attribute__((__nothrow__))
int vsscanf (const char * __restrict__, const char * __restrict__, __builtin_va_list);
# 646 "c:\\mingw\\include\\stdio.h" 3
__attribute__((__cdecl__)) __attribute__((__nothrow__)) ssize_t
getdelim (char ** __restrict__, size_t * __restrict__, int, FILE * __restrict__);

__attribute__((__cdecl__)) __attribute__((__nothrow__)) ssize_t
getline (char ** __restrict__, size_t * __restrict__, FILE * __restrict__);
# 666 "c:\\mingw\\include\\stdio.h" 3
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int fscanf (FILE *, const char *, ...);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int scanf (const char *, ...);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int sscanf (const char *, const char *, ...);



 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int fgetc (FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char * fgets (char *, int, FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int fputc (int, FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int fputs (const char *, FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char * gets (char *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int puts (const char *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int ungetc (int, FILE *);
# 687 "c:\\mingw\\include\\stdio.h" 3
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _filbuf (FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _flsbuf (int, FILE *);



extern inline __attribute__((__gnu_inline__)) __attribute__((__cdecl__)) __attribute__((__nothrow__)) int getc (FILE *);
extern inline __attribute__((__gnu_inline__)) __attribute__((__cdecl__)) __attribute__((__nothrow__)) int getc (FILE * __F)
{
  return (--__F->_cnt >= 0)
    ? (int) (unsigned char) *__F->_ptr++
    : _filbuf (__F);
}

extern inline __attribute__((__gnu_inline__)) __attribute__((__cdecl__)) __attribute__((__nothrow__)) int putc (int, FILE *);
extern inline __attribute__((__gnu_inline__)) __attribute__((__cdecl__)) __attribute__((__nothrow__)) int putc (int __c, FILE * __F)
{
  return (--__F->_cnt >= 0)
    ? (int) (unsigned char) (*__F->_ptr++ = (char)__c)
    : _flsbuf (__c, __F);
}

extern inline __attribute__((__gnu_inline__)) __attribute__((__cdecl__)) __attribute__((__nothrow__)) int getchar (void);
extern inline __attribute__((__gnu_inline__)) __attribute__((__cdecl__)) __attribute__((__nothrow__)) int getchar (void)
{
  return (--(&_iob[0])->_cnt >= 0)
    ? (int) (unsigned char) *(&_iob[0])->_ptr++
    : _filbuf ((&_iob[0]));
}

extern inline __attribute__((__gnu_inline__)) __attribute__((__cdecl__)) __attribute__((__nothrow__)) int putchar(int);
extern inline __attribute__((__gnu_inline__)) __attribute__((__cdecl__)) __attribute__((__nothrow__)) int putchar(int __c)
{
  return (--(&_iob[1])->_cnt >= 0)
    ? (int) (unsigned char) (*(&_iob[1])->_ptr++ = (char)__c)
    : _flsbuf (__c, (&_iob[1]));}
# 734 "c:\\mingw\\include\\stdio.h" 3
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) size_t fread (void *, size_t, size_t, FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) size_t fwrite (const void *, size_t, size_t, FILE *);



 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int fseek (FILE *, long, int);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) long ftell (FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) void rewind (FILE *);
# 787 "c:\\mingw\\include\\stdio.h" 3
typedef long long fpos_t;




 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int fgetpos (FILE *, fpos_t *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int fsetpos (FILE *, const fpos_t *);



 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int feof (FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int ferror (FILE *);
# 808 "c:\\mingw\\include\\stdio.h" 3
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) void clearerr (FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) void perror (const char *);






 __attribute__((__cdecl__)) __attribute__((__nothrow__)) FILE * _popen (const char *, const char *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _pclose (FILE *);


 __attribute__((__cdecl__)) __attribute__((__nothrow__)) FILE * popen (const char *, const char *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int pclose (FILE *);




 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _flushall (void);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _fgetchar (void);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _fputchar (int);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) FILE * _fdopen (int, const char *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _fileno (FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _fcloseall (void);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) FILE * _fsopen (const char *, const char *, int);

 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _getmaxstdio (void);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _setmaxstdio (int);
# 859 "c:\\mingw\\include\\stdio.h" 3
unsigned int __attribute__((__cdecl__)) __mingw_get_output_format (void);
unsigned int __attribute__((__cdecl__)) __mingw_set_output_format (unsigned int);







int __attribute__((__cdecl__)) __mingw_get_printf_count_output (void);
int __attribute__((__cdecl__)) __mingw_set_printf_count_output (int);
# 885 "c:\\mingw\\include\\stdio.h" 3
extern inline __attribute__((__gnu_inline__)) __attribute__((__always_inline__)) unsigned int __attribute__((__cdecl__)) _get_output_format (void)
{ return __mingw_get_output_format (); }

extern inline __attribute__((__gnu_inline__)) __attribute__((__always_inline__)) unsigned int __attribute__((__cdecl__)) _set_output_format (unsigned int __style)
{ return __mingw_set_output_format (__style); }
# 910 "c:\\mingw\\include\\stdio.h" 3
extern inline __attribute__((__gnu_inline__)) __attribute__((__always_inline__)) int __attribute__((__cdecl__)) _get_printf_count_output (void)
{ return 0 ? 1 : __mingw_get_printf_count_output (); }

extern inline __attribute__((__gnu_inline__)) __attribute__((__always_inline__)) int __attribute__((__cdecl__)) _set_printf_count_output (int __mode)
{ return 0 ? 1 : __mingw_set_printf_count_output (__mode); }



 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int fgetchar (void);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int fputchar (int);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) FILE * fdopen (int, const char *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int fileno (FILE *);
# 930 "c:\\mingw\\include\\stdio.h" 3
extern inline __attribute__((__gnu_inline__)) __attribute__((__always_inline__)) FILE * __attribute__((__cdecl__)) __attribute__((__nothrow__)) fopen64 (const char *, const char *);
extern inline __attribute__((__gnu_inline__)) __attribute__((__always_inline__))
FILE * __attribute__((__cdecl__)) __attribute__((__nothrow__)) fopen64 (const char * filename, const char * mode)
{ return fopen (filename, mode); }

int __attribute__((__cdecl__)) __attribute__((__nothrow__)) fseeko64 (FILE *, __off64_t, int);






extern inline __attribute__((__gnu_inline__)) __attribute__((__always_inline__)) __off64_t __attribute__((__cdecl__)) __attribute__((__nothrow__)) ftello64 (FILE *);
extern inline __attribute__((__gnu_inline__)) __attribute__((__always_inline__))
__off64_t __attribute__((__cdecl__)) __attribute__((__nothrow__)) ftello64 (FILE * stream)
{ fpos_t __pos; return (fgetpos(stream, &__pos)) ? -1LL : (__off64_t)(__pos); }
# 958 "c:\\mingw\\include\\stdio.h" 3
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int fwprintf (FILE *, const wchar_t *, ...);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int wprintf (const wchar_t *, ...);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int vfwprintf (FILE *, const wchar_t *, __builtin_va_list);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int vwprintf (const wchar_t *, __builtin_va_list);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _snwprintf (wchar_t *, size_t, const wchar_t *, ...);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _vscwprintf (const wchar_t *, __builtin_va_list);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _vsnwprintf (wchar_t *, size_t, const wchar_t *, __builtin_va_list);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int fwscanf (FILE *, const wchar_t *, ...);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int wscanf (const wchar_t *, ...);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int swscanf (const wchar_t *, const wchar_t *, ...);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wint_t fgetwc (FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wint_t fputwc (wchar_t, FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wint_t ungetwc (wchar_t, FILE *);




 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int swprintf (wchar_t *, const wchar_t *, ...);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int vswprintf (wchar_t *, const wchar_t *, __builtin_va_list);



 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wchar_t * fgetws (wchar_t *, int, FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int fputws (const wchar_t *, FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wint_t getwc (FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wint_t getwchar (void);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wint_t putwc (wint_t, FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wint_t putwchar (wint_t);


 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wchar_t * _getws (wchar_t *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _putws (const wchar_t *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) FILE * _wfdopen(int, const wchar_t *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) FILE * _wfopen (const wchar_t *, const wchar_t *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) FILE * _wfreopen (const wchar_t *, const wchar_t *, FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) FILE * _wfsopen (const wchar_t *, const wchar_t *, int);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wchar_t * _wtmpnam (wchar_t *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wchar_t * _wtempnam (const wchar_t *, const wchar_t *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _wrename (const wchar_t *, const wchar_t *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _wremove (const wchar_t *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) void _wperror (const wchar_t *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) FILE * _wpopen (const wchar_t *, const wchar_t *);






__attribute__((__cdecl__)) __attribute__((__nothrow__)) int snwprintf (wchar_t *, size_t, const wchar_t *, ...);
__attribute__((__cdecl__)) __attribute__((__nothrow__)) int vsnwprintf (wchar_t *, size_t, const wchar_t *, __builtin_va_list);
# 1016 "c:\\mingw\\include\\stdio.h" 3
__attribute__((__cdecl__)) __attribute__((__nothrow__)) int vwscanf (const wchar_t *__restrict__, __builtin_va_list);
__attribute__((__cdecl__)) __attribute__((__nothrow__))
int vfwscanf (FILE *__restrict__, const wchar_t *__restrict__, __builtin_va_list);
__attribute__((__cdecl__)) __attribute__((__nothrow__))
int vswscanf (const wchar_t *__restrict__, const wchar_t * __restrict__, __builtin_va_list);






 __attribute__((__cdecl__)) __attribute__((__nothrow__)) FILE * wpopen (const wchar_t *, const wchar_t *);




 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wint_t _fgetwchar (void);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wint_t _fputwchar (wint_t);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _getw (FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _putw (int, FILE *);




 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wint_t fgetwchar (void);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wint_t fputwchar (wint_t);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int getw (FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int putw (int, FILE *);





# 46 "c:\\mingw\\include\\curses.h" 2 3
# 85 "c:\\mingw\\include\\curses.h" 3
typedef unsigned char bool;





typedef unsigned long chtype;
# 101 "c:\\mingw\\include\\curses.h" 3
typedef chtype attr_t;







typedef struct
{
    int x;
    int y;
    short button[3];
    int changes;
} MOUSE_STATUS;
# 209 "c:\\mingw\\include\\curses.h" 3
typedef unsigned long mmask_t;

typedef struct
{
        short id;
        int x, y, z;
        mmask_t bstate;

} MEVENT;
# 236 "c:\\mingw\\include\\curses.h" 3
typedef struct _win
{
    int _cury;
    int _curx;
    int _maxy;
    int _maxx;
    int _begy;
    int _begx;
    int _flags;
    chtype _attrs;
    chtype _bkgd;
    bool _clear;
    bool _leaveit;
    bool _scroll;
    bool _nodelay;
    bool _immed;
    bool _sync;
    bool _use_keypad;
    chtype **_y;
    int *_firstch;
    int *_lastch;
    int _tmarg;
    int _bmarg;
    int _delayms;
    int _parx, _pary;
    struct _win *_parent;
} WINDOW;




typedef struct
{
    bool alive;
    bool autocr;
    bool cbreak;
    bool echo;
    bool raw_inp;
    bool raw_out;
    bool audible;
    bool mono;
    bool resized;
    bool orig_attr;
    short orig_fore;
    short orig_back;
    int cursrow;
    int curscol;
    int visibility;
    int orig_cursor;
    int lines;
    int cols;
    unsigned long _trap_mbe;
    unsigned long _map_mbe_to_key;
    int mouse_wait;


    int slklines;
    WINDOW *slk_winptr;
    int linesrippedoff;
    int linesrippedoffontop;

    int delaytenths;

    bool _preserve;

    int _restore;

    bool save_key_modifiers;

    bool return_key_modifiers;

    bool key_code;
# 319 "c:\\mingw\\include\\curses.h" 3
    short line_color;
} SCREEN;
# 338 "c:\\mingw\\include\\curses.h" 3
extern int LINES;
extern int COLS;
extern WINDOW *stdscr;
extern WINDOW *curscr;
extern SCREEN *SP;
extern MOUSE_STATUS Mouse_status;
extern int COLORS;
extern int COLOR_PAIRS;
extern int TABSIZE;
extern chtype acs_map[];
extern char ttytype[];
# 872 "c:\\mingw\\include\\curses.h" 3
int addch(const chtype);
int addchnstr(const chtype *, int);
int addchstr(const chtype *);
int addnstr(const char *, int);
int addstr(const char *);
int attroff(chtype);
int attron(chtype);
int attrset(chtype);
int attr_get(attr_t *, short *, void *);
int attr_off(attr_t, void *);
int attr_on(attr_t, void *);
int attr_set(attr_t, short, void *);
int baudrate(void);
int beep(void);
int bkgd(chtype);
void bkgdset(chtype);
int border(chtype, chtype, chtype, chtype, chtype, chtype, chtype, chtype);
int box(WINDOW *, chtype, chtype);
bool can_change_color(void);
int cbreak(void);
int chgat(int, attr_t, short, const void *);
int clearok(WINDOW *, bool);
int clear(void);
int clrtobot(void);
int clrtoeol(void);
int color_content(short, short *, short *, short *);
int color_set(short, void *);
int copywin(const WINDOW *, WINDOW *, int, int, int, int, int, int, int);
int curs_set(int);
int def_prog_mode(void);
int def_shell_mode(void);
int delay_output(int);
int delch(void);
int deleteln(void);
void delscreen(SCREEN *);
int delwin(WINDOW *);
WINDOW *derwin(WINDOW *, int, int, int, int);
int doupdate(void);
WINDOW *dupwin(WINDOW *);
int echochar(const chtype);
int echo(void);
int endwin(void);
char erasechar(void);
int erase(void);
void filter(void);
int flash(void);
int flushinp(void);
chtype getbkgd(WINDOW *);
int getnstr(char *, int);
int getstr(char *);
WINDOW *getwin(FILE *);
int halfdelay(int);
bool has_colors(void);
bool has_ic(void);
bool has_il(void);
int hline(chtype, int);
void idcok(WINDOW *, bool);
int idlok(WINDOW *, bool);
void immedok(WINDOW *, bool);
int inchnstr(chtype *, int);
int inchstr(chtype *);
chtype inch(void);
int init_color(short, short, short, short);
int init_pair(short, short, short);
WINDOW *initscr(void);
int innstr(char *, int);
int insch(chtype);
int insdelln(int);
int insertln(void);
int insnstr(const char *, int);
int insstr(const char *);
int instr(char *);
int intrflush(WINDOW *, bool);
bool isendwin(void);
bool is_linetouched(WINDOW *, int);
bool is_wintouched(WINDOW *);
char *keyname(int);
int keypad(WINDOW *, bool);
char killchar(void);
int leaveok(WINDOW *, bool);
char *longname(void);
int meta(WINDOW *, bool);
int move(int, int);
int mvaddch(int, int, const chtype);
int mvaddchnstr(int, int, const chtype *, int);
int mvaddchstr(int, int, const chtype *);
int mvaddnstr(int, int, const char *, int);
int mvaddstr(int, int, const char *);
int mvchgat(int, int, int, attr_t, short, const void *);
int mvcur(int, int, int, int);
int mvdelch(int, int);
int mvderwin(WINDOW *, int, int);
int mvgetch(int, int);
int mvgetnstr(int, int, char *, int);
int mvgetstr(int, int, char *);
int mvhline(int, int, chtype, int);
chtype mvinch(int, int);
int mvinchnstr(int, int, chtype *, int);
int mvinchstr(int, int, chtype *);
int mvinnstr(int, int, char *, int);
int mvinsch(int, int, chtype);
int mvinsnstr(int, int, const char *, int);
int mvinsstr(int, int, const char *);
int mvinstr(int, int, char *);
int mvprintw(int, int, const char *, ...);
int mvscanw(int, int, const char *, ...);
int mvvline(int, int, chtype, int);
int mvwaddchnstr(WINDOW *, int, int, const chtype *, int);
int mvwaddchstr(WINDOW *, int, int, const chtype *);
int mvwaddch(WINDOW *, int, int, const chtype);
int mvwaddnstr(WINDOW *, int, int, const char *, int);
int mvwaddstr(WINDOW *, int, int, const char *);
int mvwchgat(WINDOW *, int, int, int, attr_t, short, const void *);
int mvwdelch(WINDOW *, int, int);
int mvwgetch(WINDOW *, int, int);
int mvwgetnstr(WINDOW *, int, int, char *, int);
int mvwgetstr(WINDOW *, int, int, char *);
int mvwhline(WINDOW *, int, int, chtype, int);
int mvwinchnstr(WINDOW *, int, int, chtype *, int);
int mvwinchstr(WINDOW *, int, int, chtype *);
chtype mvwinch(WINDOW *, int, int);
int mvwinnstr(WINDOW *, int, int, char *, int);
int mvwinsch(WINDOW *, int, int, chtype);
int mvwinsnstr(WINDOW *, int, int, const char *, int);
int mvwinsstr(WINDOW *, int, int, const char *);
int mvwinstr(WINDOW *, int, int, char *);
int mvwin(WINDOW *, int, int);
int mvwprintw(WINDOW *, int, int, const char *, ...);
int mvwscanw(WINDOW *, int, int, const char *, ...);
int mvwvline(WINDOW *, int, int, chtype, int);
int napms(int);
WINDOW *newpad(int, int);
SCREEN *newterm(const char *, FILE *, FILE *);
WINDOW *newwin(int, int, int, int);
int nl(void);
int nocbreak(void);
int nodelay(WINDOW *, bool);
int noecho(void);
int nonl(void);
void noqiflush(void);
int noraw(void);
int notimeout(WINDOW *, bool);
int overlay(const WINDOW *, WINDOW *);
int overwrite(const WINDOW *, WINDOW *);
int pair_content(short, short *, short *);
int pechochar(WINDOW *, chtype);
int pnoutrefresh(WINDOW *, int, int, int, int, int, int);
int prefresh(WINDOW *, int, int, int, int, int, int);
int printw(const char *, ...);
int putwin(WINDOW *, FILE *);
void qiflush(void);
int raw(void);
int redrawwin(WINDOW *);
int refresh(void);
int reset_prog_mode(void);
int reset_shell_mode(void);
int resetty(void);
int ripoffline(int, int (*)(WINDOW *, int));
int savetty(void);
int scanw(const char *, ...);
int scr_dump(const char *);
int scr_init(const char *);
int scr_restore(const char *);
int scr_set(const char *);
int scrl(int);
int scroll(WINDOW *);
int scrollok(WINDOW *, bool);
SCREEN *set_term(SCREEN *);
int setscrreg(int, int);
int slk_attroff(const chtype);
int slk_attr_off(const attr_t, void *);
int slk_attron(const chtype);
int slk_attr_on(const attr_t, void *);
int slk_attrset(const chtype);
int slk_attr_set(const attr_t, short, void *);
int slk_clear(void);
int slk_color(short);
int slk_init(int);
char *slk_label(int);
int slk_noutrefresh(void);
int slk_refresh(void);
int slk_restore(void);
int slk_set(int, const char *, int);
int slk_touch(void);
int standend(void);
int standout(void);
int start_color(void);
WINDOW *subpad(WINDOW *, int, int, int, int);
WINDOW *subwin(WINDOW *, int, int, int, int);
int syncok(WINDOW *, bool);
chtype termattrs(void);
attr_t term_attrs(void);
char *termname(void);
void timeout(int);
int touchline(WINDOW *, int, int);
int touchwin(WINDOW *);
int typeahead(int);
int untouchwin(WINDOW *);
void use_env(bool);
int vidattr(chtype);
int vid_attr(attr_t, short, void *);
int vidputs(chtype, int (*)(int));
int vid_puts(attr_t, short, void *, int (*)(int));
int vline(chtype, int);
int vw_printw(WINDOW *, const char *, va_list);
int vwprintw(WINDOW *, const char *, va_list);
int vw_scanw(WINDOW *, const char *, va_list);
int vwscanw(WINDOW *, const char *, va_list);
int waddchnstr(WINDOW *, const chtype *, int);
int waddchstr(WINDOW *, const chtype *);
int waddch(WINDOW *, const chtype);
int waddnstr(WINDOW *, const char *, int);
int waddstr(WINDOW *, const char *);
int wattroff(WINDOW *, chtype);
int wattron(WINDOW *, chtype);
int wattrset(WINDOW *, chtype);
int wattr_get(WINDOW *, attr_t *, short *, void *);
int wattr_off(WINDOW *, attr_t, void *);
int wattr_on(WINDOW *, attr_t, void *);
int wattr_set(WINDOW *, attr_t, short, void *);
void wbkgdset(WINDOW *, chtype);
int wbkgd(WINDOW *, chtype);
int wborder(WINDOW *, chtype, chtype, chtype, chtype,
                chtype, chtype, chtype, chtype);
int wchgat(WINDOW *, int, attr_t, short, const void *);
int wclear(WINDOW *);
int wclrtobot(WINDOW *);
int wclrtoeol(WINDOW *);
int wcolor_set(WINDOW *, short, void *);
void wcursyncup(WINDOW *);
int wdelch(WINDOW *);
int wdeleteln(WINDOW *);
int wechochar(WINDOW *, const chtype);
int werase(WINDOW *);
int wgetch(WINDOW *);
int wgetnstr(WINDOW *, char *, int);
int wgetstr(WINDOW *, char *);
int whline(WINDOW *, chtype, int);
int winchnstr(WINDOW *, chtype *, int);
int winchstr(WINDOW *, chtype *);
chtype winch(WINDOW *);
int winnstr(WINDOW *, char *, int);
int winsch(WINDOW *, chtype);
int winsdelln(WINDOW *, int);
int winsertln(WINDOW *);
int winsnstr(WINDOW *, const char *, int);
int winsstr(WINDOW *, const char *);
int winstr(WINDOW *, char *);
int wmove(WINDOW *, int, int);
int wnoutrefresh(WINDOW *);
int wprintw(WINDOW *, const char *, ...);
int wredrawln(WINDOW *, int, int);
int wrefresh(WINDOW *);
int wscanw(WINDOW *, const char *, ...);
int wscrl(WINDOW *, int);
int wsetscrreg(WINDOW *, int, int);
int wstandend(WINDOW *);
int wstandout(WINDOW *);
void wsyncdown(WINDOW *);
void wsyncup(WINDOW *);
void wtimeout(WINDOW *, int);
int wtouchln(WINDOW *, int, int, int);
int wvline(WINDOW *, chtype, int);
# 1237 "c:\\mingw\\include\\curses.h" 3
chtype getattrs(WINDOW *);
int getbegx(WINDOW *);
int getbegy(WINDOW *);
int getmaxx(WINDOW *);
int getmaxy(WINDOW *);
int getparx(WINDOW *);
int getpary(WINDOW *);
int getcurx(WINDOW *);
int getcury(WINDOW *);
void traceoff(void);
void traceon(void);
char *unctrl(chtype);

int crmode(void);
int nocrmode(void);
int draino(int);
int resetterm(void);
int fixterm(void);
int saveterm(void);
int setsyx(int, int);

int mouse_set(unsigned long);
int mouse_on(unsigned long);
int mouse_off(unsigned long);
int request_mouse_pos(void);
int map_button(unsigned long);
void wmouse_position(WINDOW *, int *, int *);
unsigned long getmouse(void);
unsigned long getbmap(void);



int assume_default_colors(int, int);
const char *curses_version(void);
bool has_key(int);
int use_default_colors(void);
int wresize(WINDOW *, int, int);

int mouseinterval(int);
mmask_t mousemask(mmask_t, mmask_t *);
bool mouse_trafo(int *, int *, bool);
int nc_getmouse(MEVENT *);
int ungetmouse(MEVENT *);
bool wenclose(const WINDOW *, int, int);
bool wmouse_trafo(const WINDOW *, int *, int *, bool);



int addrawch(chtype);
int insrawch(chtype);
bool is_termresized(void);
int mvaddrawch(int, int, chtype);
int mvdeleteln(int, int);
int mvinsertln(int, int);
int mvinsrawch(int, int, chtype);
int mvwaddrawch(WINDOW *, int, int, chtype);
int mvwdeleteln(WINDOW *, int, int);
int mvwinsertln(WINDOW *, int, int);
int mvwinsrawch(WINDOW *, int, int, chtype);
int raw_output(bool);
int resize_term(int, int);
WINDOW *resize_window(WINDOW *, int, int);
int waddrawch(WINDOW *, chtype);
int winsrawch(WINDOW *, chtype);
char wordchar(void);





void PDC_debug(const char *, ...);
int PDC_ungetch(int);
int PDC_set_blink(bool);
int PDC_set_line_color(short);
void PDC_set_title(const char *);

int PDC_clearclipboard(void);
int PDC_freeclipboard(char *);
int PDC_getclipboard(char **, long *);
int PDC_setclipboard(const char *, long);

unsigned long PDC_get_input_fd(void);
unsigned long PDC_get_key_modifiers(void);
int PDC_return_key_modifiers(bool);
int PDC_save_key_modifiers(bool);
# 2 "app.c" 2
# 1 "c:\\mingw\\include\\stdlib.h" 1 3
# 34 "c:\\mingw\\include\\stdlib.h" 3
       
# 35 "c:\\mingw\\include\\stdlib.h" 3
# 55 "c:\\mingw\\include\\stdlib.h" 3
# 1 "c:\\mingw\\lib\\gcc\\mingw32\\6.3.0\\include\\stddef.h" 1 3 4
# 56 "c:\\mingw\\include\\stdlib.h" 2 3
# 90 "c:\\mingw\\include\\stdlib.h" 3

# 99 "c:\\mingw\\include\\stdlib.h" 3
extern int _argc;
extern char **_argv;




extern __attribute__((__cdecl__)) __attribute__((__nothrow__)) int *__p___argc(void);
extern __attribute__((__cdecl__)) __attribute__((__nothrow__)) char ***__p___argv(void);
extern __attribute__((__cdecl__)) __attribute__((__nothrow__)) wchar_t ***__p___wargv(void);
# 142 "c:\\mingw\\include\\stdlib.h" 3
   extern __attribute__((__dllimport__)) int __mb_cur_max;
# 166 "c:\\mingw\\include\\stdlib.h" 3
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int *_errno(void);


 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int *__doserrno(void);







extern __attribute__((__cdecl__)) __attribute__((__nothrow__)) char ***__p__environ(void);

extern __attribute__((__cdecl__)) __attribute__((__nothrow__)) wchar_t ***__p__wenviron(void);
# 202 "c:\\mingw\\include\\stdlib.h" 3
extern __attribute__((__dllimport__)) int _sys_nerr;
# 227 "c:\\mingw\\include\\stdlib.h" 3
extern __attribute__((__dllimport__)) char *_sys_errlist[];
# 238 "c:\\mingw\\include\\stdlib.h" 3
extern __attribute__((__cdecl__)) __attribute__((__nothrow__)) unsigned int *__p__osver(void);
extern __attribute__((__cdecl__)) __attribute__((__nothrow__)) unsigned int *__p__winver(void);
extern __attribute__((__cdecl__)) __attribute__((__nothrow__)) unsigned int *__p__winmajor(void);
extern __attribute__((__cdecl__)) __attribute__((__nothrow__)) unsigned int *__p__winminor(void);
# 250 "c:\\mingw\\include\\stdlib.h" 3
extern __attribute__((__dllimport__)) unsigned int _osver;
extern __attribute__((__dllimport__)) unsigned int _winver;
extern __attribute__((__dllimport__)) unsigned int _winmajor;
extern __attribute__((__dllimport__)) unsigned int _winminor;
# 289 "c:\\mingw\\include\\stdlib.h" 3
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char **__p__pgmptr(void);


 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wchar_t **__p__wpgmptr(void);
# 325 "c:\\mingw\\include\\stdlib.h" 3
extern __attribute__((__dllimport__)) int _fmode;
# 335 "c:\\mingw\\include\\stdlib.h" 3
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int atoi (const char *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) long atol (const char *);

 __attribute__((__cdecl__)) __attribute__((__nothrow__)) double strtod (const char *, char **);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) double atof (const char *);


 __attribute__((__cdecl__)) __attribute__((__nothrow__)) double _wtof (const wchar_t *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _wtoi (const wchar_t *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) long _wtol (const wchar_t *);
# 378 "c:\\mingw\\include\\stdlib.h" 3
__attribute__((__cdecl__)) __attribute__((__nothrow__))
float strtof (const char *__restrict__, char **__restrict__);

__attribute__((__cdecl__)) __attribute__((__nothrow__))
long double strtold (const char *__restrict__, char **__restrict__);


 __attribute__((__cdecl__)) __attribute__((__nothrow__)) long strtol (const char *, char **, int);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) unsigned long strtoul (const char *, char **, int);







 __attribute__((__cdecl__)) __attribute__((__nothrow__))
long wcstol (const wchar_t *, wchar_t **, int);

 __attribute__((__cdecl__)) __attribute__((__nothrow__))
unsigned long wcstoul (const wchar_t *, wchar_t **, int);

 __attribute__((__cdecl__)) __attribute__((__nothrow__)) double wcstod (const wchar_t *, wchar_t **);





__attribute__((__cdecl__)) __attribute__((__nothrow__))
float wcstof (const wchar_t *__restrict__, wchar_t **__restrict__);

__attribute__((__cdecl__)) __attribute__((__nothrow__))
long double wcstold (const wchar_t *__restrict__, wchar_t **__restrict__);
# 451 "c:\\mingw\\include\\stdlib.h" 3
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wchar_t *_wgetenv (const wchar_t *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _wputenv (const wchar_t *);

 __attribute__((__cdecl__)) __attribute__((__nothrow__))
void _wsearchenv (const wchar_t *, const wchar_t *, wchar_t *);

 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _wsystem (const wchar_t *);

 __attribute__((__cdecl__)) __attribute__((__nothrow__))
void _wmakepath (wchar_t *, const wchar_t *, const wchar_t *, const wchar_t *,
    const wchar_t *
  );

 __attribute__((__cdecl__)) __attribute__((__nothrow__))
void _wsplitpath (const wchar_t *, wchar_t *, wchar_t *, wchar_t *, wchar_t *);

 __attribute__((__cdecl__)) __attribute__((__nothrow__))
wchar_t *_wfullpath (wchar_t *, const wchar_t *, size_t);





 __attribute__((__cdecl__)) __attribute__((__nothrow__)) size_t wcstombs (char *, const wchar_t *, size_t);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int wctomb (char *, wchar_t);

 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int mblen (const char *, size_t);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) size_t mbstowcs (wchar_t *, const char *, size_t);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int mbtowc (wchar_t *, const char *, size_t);

 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int rand (void);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) void srand (unsigned int);

 __attribute__((__cdecl__)) __attribute__((__nothrow__)) void *calloc (size_t, size_t) __attribute__((__malloc__));
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) void *malloc (size_t) __attribute__((__malloc__));
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) void *realloc (void *, size_t);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) void free (void *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) void abort (void) __attribute__((__noreturn__));
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) void exit (int) __attribute__((__noreturn__));



int __attribute__((__cdecl__)) __attribute__((__nothrow__)) atexit (void (*)(void));

 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int system (const char *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char *getenv (const char *);






 __attribute__((__cdecl__)) void *bsearch
(const void *, const void *, size_t, size_t, int (*)(const void *, const void *));

 __attribute__((__cdecl__)) void qsort
(void *, size_t, size_t, int (*)(const void *, const void *));

 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int abs (int) __attribute__((__const__));
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) long labs (long) __attribute__((__const__));
# 519 "c:\\mingw\\include\\stdlib.h" 3
typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;

 __attribute__((__cdecl__)) __attribute__((__nothrow__)) div_t div (int, int) __attribute__((__const__));
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) ldiv_t ldiv (long, long) __attribute__((__const__));






 __attribute__((__cdecl__)) __attribute__((__nothrow__)) void _exit (int) __attribute__((__noreturn__));





 __attribute__((__cdecl__)) __attribute__((__nothrow__)) long long _atoi64 (const char *);
# 545 "c:\\mingw\\include\\stdlib.h" 3
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) void _beep (unsigned int, unsigned int) __attribute__((__deprecated__));

 __attribute__((__cdecl__)) __attribute__((__nothrow__)) void _seterrormode (int) __attribute__((__deprecated__));
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) void _sleep (unsigned long) __attribute__((__deprecated__));



typedef int (* _onexit_t)(void);
__attribute__((__cdecl__)) __attribute__((__nothrow__)) _onexit_t _onexit( _onexit_t );

 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _putenv (const char *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__))
void _searchenv (const char *, const char *, char *);

 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char *_ecvt (double, int, int *, int *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char *_fcvt (double, int, int *, int *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char *_gcvt (double, int, char *);

 __attribute__((__cdecl__)) __attribute__((__nothrow__))
void _makepath (char *, const char *, const char *, const char *, const char *);

 __attribute__((__cdecl__)) __attribute__((__nothrow__))
void _splitpath (const char *, char *, char *, char *, char *);

 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char *_fullpath (char*, const char*, size_t);

 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char *_itoa (int, char *, int);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char *_ltoa (long, char *, int);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char *_ultoa(unsigned long, char *, int);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wchar_t *_itow (int, wchar_t *, int);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wchar_t *_ltow (long, wchar_t *, int);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wchar_t *_ultow (unsigned long, wchar_t *, int);


 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char* _i64toa (long long, char *, int);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char* _ui64toa (unsigned long long, char *, int);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) long long _wtoi64 (const wchar_t *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wchar_t* _i64tow (long long, wchar_t *, int);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wchar_t* _ui64tow (unsigned long long, wchar_t *, int);

 __attribute__((__cdecl__)) __attribute__((__nothrow__)) unsigned int (_rotl)(unsigned int, int) __attribute__((__const__));
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) unsigned int (_rotr)(unsigned int, int) __attribute__((__const__));
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) unsigned long (_lrotl)(unsigned long, int) __attribute__((__const__));
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) unsigned long (_lrotr)(unsigned long, int) __attribute__((__const__));

 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _set_error_mode (int);
# 628 "c:\\mingw\\include\\stdlib.h" 3
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int putenv (const char*);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) void searchenv (const char*, const char*, char*);

 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char* itoa (int, char*, int);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char* ltoa (long, char*, int);


 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char* ecvt (double, int, int*, int*);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char* fcvt (double, int, int*, int*);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char* gcvt (double, int, char*);
# 649 "c:\\mingw\\include\\stdlib.h" 3
__attribute__((__cdecl__)) __attribute__((__nothrow__)) void _Exit(int) __attribute__((__noreturn__));






typedef struct { long long quot, rem; } lldiv_t;
__attribute__((__cdecl__)) __attribute__((__nothrow__)) lldiv_t lldiv (long long, long long) __attribute__((__const__));

__attribute__((__cdecl__)) __attribute__((__nothrow__)) long long llabs (long long);
# 670 "c:\\mingw\\include\\stdlib.h" 3
__attribute__((__cdecl__)) __attribute__((__nothrow__))
long long strtoll (const char *__restrict__, char **__restrict, int);

__attribute__((__cdecl__)) __attribute__((__nothrow__))
unsigned long long strtoull (const char *__restrict__, char **__restrict__, int);





__attribute__((__cdecl__)) __attribute__((__nothrow__)) long long atoll (const char *);
# 726 "c:\\mingw\\include\\stdlib.h" 3
__attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__deprecated__)) long long wtoll (const wchar_t *);
__attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__deprecated__)) char *lltoa (long long, char *, int);
__attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__deprecated__)) char *ulltoa (unsigned long long , char *, int);
__attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__deprecated__)) wchar_t *lltow (long long, wchar_t *, int);
__attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__deprecated__)) wchar_t *ulltow (unsigned long long, wchar_t *, int);
# 766 "c:\\mingw\\include\\stdlib.h" 3
__attribute__((__cdecl__)) __attribute__((__nothrow__)) int mkstemp (char *);
__attribute__((__cdecl__)) __attribute__((__nothrow__)) int __mingw_mkstemp (int, char *);
# 808 "c:\\mingw\\include\\stdlib.h" 3
extern inline __attribute__((__gnu_inline__)) __attribute__((__always_inline__))
__attribute__((__cdecl__)) __attribute__((__nothrow__)) int mkstemp (char *__filename_template)
{ return __mingw_mkstemp( 0, __filename_template ); }
# 819 "c:\\mingw\\include\\stdlib.h" 3
__attribute__((__cdecl__)) __attribute__((__nothrow__)) char *mkdtemp (char *);
__attribute__((__cdecl__)) __attribute__((__nothrow__)) char *__mingw_mkdtemp (char *);

extern inline __attribute__((__gnu_inline__)) __attribute__((__always_inline__))
__attribute__((__cdecl__)) __attribute__((__nothrow__)) char *mkdtemp (char *__dirname_template)
{ return __mingw_mkdtemp( __dirname_template ); }






__attribute__((__cdecl__)) __attribute__((__nothrow__)) int setenv( const char *, const char *, int );
__attribute__((__cdecl__)) __attribute__((__nothrow__)) int unsetenv( const char * );

__attribute__((__cdecl__)) __attribute__((__nothrow__)) int __mingw_setenv( const char *, const char *, int );

extern inline __attribute__((__gnu_inline__)) __attribute__((__always_inline__))
__attribute__((__cdecl__)) __attribute__((__nothrow__)) int setenv( const char *__n, const char *__v, int __f )
{ return __mingw_setenv( __n, __v, __f ); }

extern inline __attribute__((__gnu_inline__)) __attribute__((__always_inline__))
__attribute__((__cdecl__)) __attribute__((__nothrow__)) int unsetenv( const char *__name )
{ return __mingw_setenv( __name, ((void *)0), 1 ); }





# 3 "app.c" 2
# 1 "c:\\mingw\\include\\time.h" 1 3
# 33 "c:\\mingw\\include\\time.h" 3
       
# 34 "c:\\mingw\\include\\time.h" 3
# 45 "c:\\mingw\\include\\time.h" 3
# 1 "c:\\mingw\\include\\sys\\types.h" 1 3
# 34 "c:\\mingw\\include\\sys\\types.h" 3
       
# 35 "c:\\mingw\\include\\sys\\types.h" 3
# 139 "c:\\mingw\\include\\sys\\types.h" 3
  typedef long __time32_t;
  typedef long long __time64_t;
# 149 "c:\\mingw\\include\\sys\\types.h" 3
   typedef __time32_t time_t;
# 46 "c:\\mingw\\include\\time.h" 2 3
# 115 "c:\\mingw\\include\\time.h" 3
struct timespec
{







  __time64_t tv_sec;
  long tv_nsec;
};


struct __mingw32_expanded_timespec
{





  union
  {



    __time64_t __tv64_sec;
    __time32_t __tv32_sec;
    time_t tv_sec;
  };
  long tv_nsec;
};
# 155 "c:\\mingw\\include\\time.h" 3


extern inline __attribute__((__gnu_inline__)) __attribute__((__always_inline__))







struct __mingw32_expanded_timespec *mingw_timespec( struct timespec *__tv )
{ return (struct __mingw32_expanded_timespec *)(__tv); }


# 178 "c:\\mingw\\include\\time.h" 3
# 1 "c:\\mingw\\lib\\gcc\\mingw32\\6.3.0\\include\\stddef.h" 1 3 4
# 179 "c:\\mingw\\include\\time.h" 2 3




typedef long clock_t;

struct tm
{




  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;
};



 __attribute__((__cdecl__)) __attribute__((__nothrow__)) clock_t clock (void);
# 214 "c:\\mingw\\include\\time.h" 3
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) time_t time (time_t *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) double difftime (time_t, time_t);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) time_t mktime (struct tm *);
# 228 "c:\\mingw\\include\\time.h" 3
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char *asctime (const struct tm *);





 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char *ctime (const time_t *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) struct tm *gmtime (const time_t *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) struct tm *localtime (const time_t *);


 __attribute__((__cdecl__)) __attribute__((__nothrow__))
size_t strftime (char *, size_t, const char *, const struct tm *);


extern __attribute__((__cdecl__)) __attribute__((__nothrow__)) void _tzset (void);


extern __attribute__((__cdecl__)) __attribute__((__nothrow__)) void tzset (void);


 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char *_strdate (char *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char *_strtime (char *);






 __attribute__((__cdecl__)) __attribute__((__nothrow__)) __time64_t _time64( __time64_t *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) __time64_t _mktime64 (struct tm *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char *_ctime64 (const __time64_t *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) struct tm *_gmtime64 (const __time64_t *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) struct tm *_localtime64 (const __time64_t *);
# 344 "c:\\mingw\\include\\time.h" 3
extern __attribute__((__cdecl__)) __attribute__((__nothrow__)) int *__p__daylight (void);
extern __attribute__((__cdecl__)) __attribute__((__nothrow__)) long *__p__timezone (void);
extern __attribute__((__cdecl__)) __attribute__((__nothrow__)) char **__p__tzname (void);

extern __attribute__((__dllimport__)) int _daylight;
extern __attribute__((__dllimport__)) long _timezone;
extern __attribute__((__dllimport__)) char *_tzname[2];
# 381 "c:\\mingw\\include\\time.h" 3
extern __attribute__((__dllimport__)) int daylight;
extern __attribute__((__dllimport__)) long timezone;
extern __attribute__((__dllimport__)) char *tzname[2];
# 407 "c:\\mingw\\include\\time.h" 3
__attribute__((__cdecl__)) __attribute__((__nothrow__))
int nanosleep( const struct timespec *, struct timespec * );
# 428 "c:\\mingw\\include\\time.h" 3

# 440 "c:\\mingw\\include\\time.h" 3



 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wchar_t *_wasctime (const struct tm *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wchar_t *_wstrdate (wchar_t *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wchar_t *_wstrtime (wchar_t *);






 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wchar_t *_wctime64 (const __time64_t *);
# 466 "c:\\mingw\\include\\time.h" 3
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wchar_t *_wctime (const time_t *);
# 495 "c:\\mingw\\include\\time.h" 3
 __attribute__((__cdecl__)) __attribute__((__nothrow__))
size_t wcsftime (wchar_t *, size_t, const wchar_t *, const struct tm *);


# 4 "app.c" 2
# 1 "c:\\mingw\\lib\\gcc\\mingw32\\6.3.0\\include\\stdbool.h" 1 3 4
# 5 "app.c" 2







# 11 "app.c"
int py;
int px;

int p_gold = 0;

# 15 "app.c" 3 4
_Bool 
# 15 "app.c"
    t_placed = 0;

# 16 "app.c" 3 4
_Bool 
# 16 "app.c"
    p_placed = 0;
int r_placed = 0;

struct Monsters
{
    int y;
    int x;
    int hp;
};

struct Monsters monster[10];

int battle(int colms, char (*map)[colms], int dir_y, int dir_x)
{
    for (int m = 0; m < 10; m++)
    {
        if (dir_y == monster[m].y && dir_x == monster[m].x)
        {
            if (monster[m].hp <= 0)
            {
                map[dir_y][dir_x] = ' ';
                p_gold += rand() % 10 + 1;
            }
            else
                monster[m].hp -= 1;

            break;
        }
    }
    return 0;
}
int p_action(int c, int colms, char (*map)[colms])
{
    int dir_y = py, dir_x = px;

    if (c == 
# 51 "app.c" 3
            0x103
# 51 "app.c"
                  )
        dir_y--;
    else if (c == 
# 53 "app.c" 3
                 0x102
# 53 "app.c"
                         )
        dir_y++;
    else if (c == 
# 55 "app.c" 3
                 0x104
# 55 "app.c"
                         )
        dir_x--;
    else if (c == 
# 57 "app.c" 3
                 0x105
# 57 "app.c"
                          )
        dir_x++;
    else if (c == '>' && map[py][px] == '>')
    {
        t_placed = 0;
        p_placed = 0;
        r_placed = 0;
        return 1;
    }

    if (map[dir_y][dir_x] == ' ' || map[dir_y][dir_x] == '>')
    {
        py = dir_y;
        px = dir_x;
    }
    else if (map[dir_y][dir_x] == 't')
    {
        battle(colms, map, dir_y, dir_x);
    }
    return 0;
}

int dungeon_gen(int rows, int colms, char (*map)[colms])
{

    if (!r_placed)

    {
        int ry;
        int rx;
        int r_size_y;
        int r_size_x;
        int r_center_y;
        int r_center_x;
        int r_old_center_y;
        int r_old_center_x;
        int room_num = rand() % 5 + 5;
        
# 94 "app.c" 3 4
       _Bool 
# 94 "app.c"
            collision;


        for (int y = 0; y <= rows; y++)
        {
            for (int x = 0; x <= colms; x++)
            {

                if (y == 0 || y == rows - 1 ||
                    x == 0 || x == colms || y == rows)

                    map[y][x] = '%';

                else
                    map[y][x] = '#';
            }
        }

        while (r_placed < room_num)
        {
            int try_counter = 0;

            do
            {
                collision = 0;


                ry = rand() % (rows - 3) + 1;
                rx = rand() % (colms - 3) + 1;


                r_size_y = rand() % 5 + 5;
                r_size_x = rand() % 10 + 8;

                try_counter++;

                if (try_counter > 100)
                {
                    ry = rx = 3;
                    r_size_y = r_size_x = 3;

                    break;
                }


                for (int y = ry; y <= ry + r_size_y; y++)
                {
                    for (int x = rx; x <= rx + r_size_x; x++)
                    {
                        if (map[y][x] == '%' || map[y][x] == ' ' ||
                            map[y + 2][x] == ' ' || map[y - 2][x] == ' ' ||
                            map[y][x + 2] == ' ' || map[y][x - 2] == ' ')

                        {
                            collision = 1;
                            y = ry + r_size_y;
                            break;
                        }
                    }
                }

            }

            while (collision == 1);


            for (int y = ry; y <= ry + r_size_y; y++)
            {
                for (int x = rx; x <= rx + r_size_x; x++)
                {
                    if (map[y][x] == '%')
                    {
                        y = ry + r_size_y;
                        break;
                    }
                    else

                        map[y][x] = ' ';
                }
            }
            r_placed++;



            if (r_placed > 1)
            {
                r_old_center_y = r_center_y;
                r_old_center_x = r_center_x;
            }

            r_center_y = ry + (r_size_y / 2);
            r_center_x = rx + (r_size_x / 2);

            if (r_placed > 1)
            {
                int path_y;
                for (path_y = r_old_center_y; path_y != r_center_y;)
                {
                    map[path_y][r_old_center_x] = ' ';
                    if (r_old_center_y < r_center_y)
                        path_y++;
                    else
                        path_y--;
                }

                for (int x = r_old_center_x; x != r_center_x;)
                {
                    map[path_y][x] = ' ';
                    if (r_old_center_x < r_center_x)
                        x++;
                    else
                        x--;
                }
            }
        }


        int sy, sx;
        do

        {
            sy = rand() % rows;
            sx = rand() % colms;
        }

        while (map[sy][sx] != ' ');
        map[sy][sx] = '>';
    }
    return 0;
}
int respawn_creatures(int rows, int colms, char (*map)[colms])
{

    if (!t_placed)
    {
        int my, mx;

        for (int m = 0; m < 10; m++)
        {
            do
            {
                my = rand() % rows;
                mx = rand() % colms;
            }

            while (map[my][mx] != ' ');

            monster[m].y = my;
            monster[m].x = mx;
            monster[m].hp = 2;
            map[monster[m].y][monster[m].x] = 't';
        }

        t_placed = 1;
    }



    if (!p_placed)
    {
        do
        {
            py = rand() % rows;
            px = rand() % colms;
        }

        while (map[py][px] == '#' || map[py][px] == '%');
        p_placed = 1;
    }
    return 0;
}
int dungeon_draw(int rows, int colms, char (*map)[colms])
{

    for (int y = 0; y <= rows; y++)
    {
        for (int x = 0; x <= colms; x++)
        {

            if (y == rows)
                mvaddch(y, x, ' ');
            else if (map[y][x] == 't')
                mvaddch(y, x, 't');
            else if (map[y][x] == '>')
                mvaddch(y, x, '>');
            else if (map[y][x] == '%')
                mvaddch(y, x, '%');
            else if (map[y][x] == ' ')
                mvaddch(y, x, ' ');

            else
                mvaddch(y, x, '#');
        }
    }
    mvprintw(rows, 0, "Gold : %d", p_gold);
    return 0;
}

int game_loop(int rows, int colms, char (*map)[colms])
{
    int c;
    int new_lvl;
    int dlvl = 1;
    srand(time(
# 297 "app.c" 3 4
              ((void *)0)
# 297 "app.c"
                  ));

    dungeon_gen(rows, colms, map);
    respawn_creatures(rows, colms, map);

    if (c != 0)
    {
        new_lvl = p_action(c, colms, map);
    }

    dungeon_draw(rows, colms, map);

    mvaddch(py, px, '@');

    if (new_lvl)
    {


        mvprintw(rows, 0, "Welcome to level %d", ++dlvl);
    }

    c = 
# 318 "app.c" 3
       wgetch(stdscr)
# 318 "app.c"
              ;

    return c;
}

int main()
{
    int c = 0;

    int rows;
    int colms;

    initscr();
    keypad(stdscr, 
# 331 "app.c" 3
                  1
# 331 "app.c"
                      );
    noecho();
    curs_set(0);
    
# 334 "app.c" 3
   (
# 334 "app.c"
   rows 
# 334 "app.c" 3
   = getmaxy(
# 334 "app.c"
   stdscr
# 334 "app.c" 3
   ), 
# 334 "app.c"
   colms 
# 334 "app.c" 3
   = getmaxx(
# 334 "app.c"
   stdscr
# 334 "app.c" 3
   ))
# 334 "app.c"
                                ;
    char map[rows][colms];
    do
    {
        c = game_loop(rows - 1, colms - 1, map);


    }

    while (c != 27);

    endwin();

    
# 347 "app.c" 3
   wgetch(stdscr)
# 347 "app.c"
          ;
    
# 348 "app.c" 3
   wgetch(stdscr)
# 348 "app.c"
          ;

    return 0;
}
