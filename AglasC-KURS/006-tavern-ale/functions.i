#line 1 "functions.c"
#line 1 "<built-in>"
#line 1 "<built-in>"
#line 146 "<built-in>"
#line 1 "<command line>"
#line 1 "<built-in>"
#line 1 "functions.c"

#line 1 "./functions.h"
#line 1 "./game.h"




int game(void);
extern char nickname[12];
#line 1 "./functions.h"



#line 1 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\stdio.h"
#line 21 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\stdio.h"
#line 1 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_stddef.h"
#line 21 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_stddef.h"
#line 1 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_defs.h"
#line 21 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_stddef.h"




#line 1 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_null.h"
#line 25 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_stddef.h"
#line 45 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_stddef.h"
typedef int ssize_t;
#line 70 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_stddef.h"
   typedef unsigned int size_t;
#line 85 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_stddef.h"
typedef size_t rsize_t;




typedef int errno_t;
#line 106 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_stddef.h"
typedef int ptrdiff_t;
#line 120 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_stddef.h"
typedef unsigned short wchar_t;
#line 130 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_stddef.h"
typedef wchar_t wint_t;
#line 139 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_stddef.h"
typedef wchar_t wctype_t;




typedef double max_align_t;
#line 155 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_stddef.h"
extern unsigned long __cdecl __threadid(void);
#line 21 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\stdio.h"



#line 1 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_nfile.h"
#line 24 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\stdio.h"





#line 1 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\stdarg.h"
#line 26 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\stdarg.h"
#line 1 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_stddef.h"
#line 26 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\stdarg.h"
#line 35 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\stdarg.h"
typedef __builtin_va_list va_list;
#line 29 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\stdio.h"
#line 47 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\stdio.h"
#pragma pack(push, 1)





typedef long fpos_t;


 typedef long off_t;





extern int _floatconvert;
#line 115 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\stdio.h"
typedef struct
{
        unsigned char *curp;
        unsigned char *buffer;
        int level;
        int bsize;
        unsigned short istemp;
        unsigned short flags;
        wchar_t hold;
        char fd;
        unsigned char token;
} FILE;
#line 146 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\stdio.h"
extern FILE __cdecl _streams[];
extern unsigned __cdecl _nfile;
#line 162 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\stdio.h"
FILE * __cdecl __getStream( int );
#line 177 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\stdio.h"
errno_t __cdecl tmpfile_s(FILE * * streamptr);
errno_t __cdecl tmpnam_s(char *__s, rsize_t __maxsize);
errno_t __cdecl _wtmpnam_s(wchar_t *__s, rsize_t __maxsize);
errno_t __cdecl fopen_s(FILE * * streamptr,
         const char *filename, const char *type);
errno_t __cdecl _wfopen_s(FILE * * streamptr,
           const wchar_t *filename, const wchar_t *type);
errno_t __cdecl freopen_s(FILE * * newstreamptr,
           const char * filename,
           const char * type,
           FILE * fp);
errno_t __cdecl _wfreopen_s(FILE * * newstreamptr,
      const wchar_t * filename,
      const wchar_t * type,
      FILE * fp);
int __cdecl fprintf_s(FILE * F, const char * fmt, ...);
int __cdecl fwprintf_s(FILE * F, const wchar_t * fmt, ...);
int __cdecl printf_s(const char * __format, ...);
int __cdecl wprintf_s(const wchar_t * __format, ...);

int __cdecl sprintf_s(char * __buffer, rsize_t __n,
           const char * __format, ...);
int __cdecl swprintf_s(wchar_t * __buffer, rsize_t __n,
     const wchar_t * __format, ...);

int __cdecl vsprintf_s(char * __buffer, rsize_t __n,
     const char * __format,
     va_list);
int __cdecl vswprintf_s(wchar_t * __buffer, rsize_t __n,
      const wchar_t * __format,
      va_list);
int __cdecl vprintf_s(const char * __format, va_list);
int __cdecl vwprintf_s(const wchar_t * __format, va_list);
int __cdecl snprintf_s(char * __buffer, rsize_t __nsize,
     const char * __format, ...);
int __cdecl snwprintf_s(wchar_t * __buffer, rsize_t __nsize,
      const wchar_t * __format, ...);
int __cdecl vfprintf_s(FILE * __stream, const char * __format,
     va_list);
int __cdecl vfwprintf_s(FILE * __stream, const wchar_t * __format,
      va_list);
int __cdecl vsnprintf_s(char * __buffer, rsize_t __nsize,
      const char * __format, va_list);
int __cdecl vsnwprintf_s(wchar_t * __buffer, rsize_t __nsize,
       const wchar_t * __format, va_list);
char * __cdecl gets_s(char * __s, rsize_t __n);
wchar_t* __cdecl _getws_s(wchar_t * __s, rsize_t __n);
int __cdecl sscanf_s(const char * __buffer,
          const char * __format, ...);
int __cdecl swscanf_s(const wchar_t * __buffer,
           const wchar_t * __format, ...);
int __cdecl fscanf_s(FILE * __stream, const char * __format, ...);
int __cdecl fwscanf_s(FILE * __stream, const wchar_t * __format, ...);
int __cdecl scanf_s(const char * __format, ...);
int __cdecl wscanf_s(const wchar_t * __format, ...);
int __cdecl vsscanf_s(const char * __buffer, const char * __format,
           va_list);
int __cdecl vswscanf_s(const wchar_t * __buffer, const wchar_t * __format,
     va_list);
int __cdecl vfscanf_s(FILE * __stream, const char * __format,
           va_list);
int __cdecl vfwscanf_s(FILE * __stream, const wchar_t * __format,
     va_list);
int __cdecl vscanf_s(const char * __format, va_list);
int __cdecl vwscanf_s(const wchar_t * __format, va_list);
#line 250 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\stdio.h"
void __cdecl clearerr(FILE * __stream);
int __cdecl fclose(FILE * __stream);
int __cdecl fflush(FILE * __stream);
int __cdecl fgetc(FILE * __stream);
wint_t __cdecl fgetwc(FILE * __stream);
int __cdecl fgetpos(FILE * __stream, fpos_t*__pos);
char * __cdecl fgets(char * __s, int __n, FILE * __stream);
wchar_t* __cdecl fgetws(wchar_t * __s, int __n, FILE * __stream);
FILE * __cdecl fopen(const char * __path, const char * __mode);
FILE * __cdecl _wfopen(const wchar_t * __path,
                                 const wchar_t * __mode);
int __cdecl fprintf(FILE * __stream, const char * __format, ...);
int __cdecl fwprintf(FILE * __stream, const wchar_t *__format, ...);
int __cdecl fputc(int __c, FILE * __stream);
wint_t __cdecl fputwc(wint_t __c, FILE * __stream);
int __cdecl fputs(const char * __s, FILE * __stream);
int __cdecl fputws(const wchar_t * __s, FILE * __stream);
size_t __cdecl fread(void * __ptr, size_t __size, size_t __n,
                                 FILE * __stream);
FILE * __cdecl freopen(const char * __path, const char * __mode,
                                 FILE * __stream);
FILE * __cdecl _wfreopen(const wchar_t * __path, const wchar_t * __mode,
                                 FILE * __stream);
int __cdecl fscanf(FILE * __stream, const char * __format, ...);
int __cdecl fwscanf(FILE *__stream, const wchar_t *__format, ...);
int __cdecl fseek(FILE * __stream, long __offset, int __whence);
int __cdecl _fseeki64(FILE * __stream, __int64 __offset, int __whence);
int __cdecl fsetpos(FILE * __stream, const fpos_t*__pos);
long __cdecl ftell(FILE * __stream);
__int64 __cdecl _ftelli64(FILE * __stream);
size_t __cdecl fwrite(const void * __ptr, size_t __size, size_t __n,
                                 FILE * __stream);
char * __cdecl gets(char * __s);
wchar_t* __cdecl _getws(wchar_t * __s);
int __cdecl _pclose(FILE *__stream);
void __cdecl perror(const char * __s);
void __cdecl _wperror(const wchar_t * __s);
FILE * __cdecl _popen(const char * __command, const char * __mode);
FILE * __cdecl _wpopen(const wchar_t * __command,
                                 const wchar_t * __mode);

int __cdecl printf(const char * __format, ...) __attribute__((format (printf, 1, 2)));
int __cdecl wprintf(const wchar_t * __format, ...);
int __cdecl puts(const char * __s);
int __cdecl _putws(const wchar_t * __s);

int __cdecl remove(const char * __path);
int __cdecl _wremove(const wchar_t * __path);
int __cdecl rename(const char * __oldname,const char * __newname);
int __cdecl _wrename(const wchar_t * __oldname,const wchar_t * __newname);
void __cdecl rewind(FILE * __stream);
int __cdecl scanf(const char * __format, ...);
int __cdecl wscanf(const wchar_t * __format, ...);
void __cdecl setbuf(FILE * __stream, char * __buf);
int __cdecl setvbuf(FILE * __stream, char * __buf,
                                 int __type, size_t __size);
int __cdecl sprintf(char * __buffer, const char * __format, ...) __attribute__((format (printf, 2, 3)));
int __cdecl swprintf(wchar_t * __buffer, const wchar_t * __format, ...);
#line 317 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\stdio.h"
int __cdecl snprintf(char * __buffer, size_t __nsize,
                                 const char * __format, ...) __attribute__((format (printf, 3, 4)));
int __cdecl snwprintf(wchar_t * __buffer, size_t __nsize,
                                 const wchar_t * __format, ...);

int __cdecl _snprintf(char * __buffer, size_t __nsize,
                                 const char * __format, ...) __attribute__((format (printf, 3, 4)));
int __cdecl _snwprintf(wchar_t * __buffer, size_t __nsize,
                                 const wchar_t * __format, ...);

int __cdecl sscanf(const char * __buffer,
                                 const char * __format, ...);
int __cdecl swscanf(const wchar_t * __buffer,
                                 const wchar_t * __format, ...);
char * __cdecl strerror(int __errnum);
FILE * __cdecl tmpfile(void);
char * __cdecl tmpnam(char * __s);
wchar_t * __cdecl _wtmpnam(wchar_t * __s);
int __cdecl ungetc(int __c, FILE * __stream);
wint_t __cdecl ungetwc(wint_t __c, FILE * __stream);
int __cdecl vfprintf(FILE * __stream, const char * __format,
                                 va_list) __attribute__((format (printf, 2, 0)));
int __cdecl vfscanf(FILE * __stream, const char * __format,
                                 va_list);
int __cdecl vprintf(const char * __format, va_list) __attribute__((format (printf, 1, 0)));
int __cdecl vscanf(const char * __format, va_list);
int __cdecl vsprintf(char * __buffer, const char * __format,
          va_list) __attribute__((format (printf, 2, 0)));
int __cdecl vsnprintf(char * __buffer, size_t __nsize, const char * __format,
           va_list) __attribute__((format (printf, 3, 0)));
int __cdecl vsscanf(const char * __buffer, const char * __format,
                                 va_list);
int __cdecl vfwprintf(FILE * __stream, const wchar_t * __format,
                                 va_list);
int __cdecl vfwscanf(FILE * __stream, const wchar_t * __format,
                                 va_list);
int __cdecl vwprintf(const wchar_t * __format, va_list);
int __cdecl vwscanf(const wchar_t * __format, va_list);
int __cdecl vswprintf(wchar_t * __buffer, const wchar_t * __format,
                                 va_list);
int __cdecl vsnwprintf(wchar_t * __buffer, size_t __nsize, const wchar_t * __format,
                                 va_list);
int __cdecl vswscanf(const wchar_t * __buffer, const wchar_t * __format,
                                 va_list);
int __cdecl _unlink(const char * __path);
int __cdecl _wunlink(const wchar_t * __path);

int __cdecl _vsnprintf(char * __buffer, size_t __nsize, const char * __format,
     va_list) __attribute__((format (printf, 3, 0)));
int __cdecl _vsnwprintf(wchar_t * __buffer, size_t __nsize, const wchar_t * __format,
                                 va_list);


int __cdecl getc(FILE * __fp);
wint_t __cdecl getwc(FILE * __fp);
int __cdecl getchar(void);
wint_t __cdecl getwchar(void);
int __cdecl putchar(const int __c);
wint_t __cdecl putwchar(const wint_t __c);
int __cdecl putc(const int __c, FILE * __fp);
wint_t __cdecl putwc(const wint_t __c, FILE * __fp);
int __cdecl feof(FILE * __fp);
int __cdecl ferror(FILE * __fp);
int __cdecl _fileno(FILE *__fp);
int __cdecl _flushall(void);
int __cdecl _fcloseall(void);
FILE * __cdecl _fdopen(int __handle, const char * __type);
FILE * __cdecl _wfdopen(int __handle, const wchar_t * __type);
int __cdecl _fgetchar(void);
wint_t __cdecl _fgetwchar(void);
int __cdecl _fputchar(int __c);
wint_t __cdecl _fputwchar(wint_t __c);
FILE * __cdecl _fsopen (const char * __path, const char * __mode, int __shflag);
FILE * __cdecl _wfsopen (const wchar_t * __path,
                                 const wchar_t * __mode, int __shflag);



int __cdecl _sopen (const char *__path, int __access, int __shflag,
                                 ... );

int __cdecl _wsopen (const wchar_t *__path, int __access, int __shflag,
                                 ... );
int __cdecl _getw(FILE * __stream);
int __cdecl _putw(int __w, FILE * __stream);
int __cdecl _rmtmp(void);
char * __cdecl _strerror(const char * __s);
char * __cdecl _tempnam(const char * __dir, const char * __pfx);
wchar_t * __cdecl _wtempnam(const wchar_t * __dir, const wchar_t * __pfx);
int __cdecl _fgetc(FILE * __stream);
wint_t __cdecl _fgetwc(FILE * __stream);
int __cdecl _fputc(char __c, FILE * __stream);
wint_t __cdecl _fputwc(wchar_t __c, FILE * __stream);

int __cdecl flushall(void);
FILE * __cdecl fdopen(int __handle, const char * __type);
int __cdecl fputchar(int __c);
int __cdecl fgetchar(void);
int __cdecl fileno(FILE * __fp);
int __cdecl fcloseall(void);
int __cdecl fseeko(FILE * __stream, off_t __offset, int __whence);
off_t __cdecl ftello(FILE * __stream);
char * __cdecl tempnam(const char * __dir, const char * __pfx);
int __cdecl rmtmp(void);
int __cdecl unlink(const char * __path);
int __cdecl getw(FILE * __stream);
int __cdecl putw(int __w, FILE * __stream);
int __cdecl sopen (const char *__path, int __access, int __shflag,
                                 ... );
#line 471 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\stdio.h"
#pragma pack(pop)
#line 4 "./functions.h"

#line 1 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\stdlib.h"
#line 21 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\stdlib.h"
#line 1 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_stddef.h"
#line 21 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\stdlib.h"
#line 56 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\stdlib.h"
#pragma pack(push, 1)





typedef struct {
        int quot;
        int rem;
} div_t;




typedef struct {
        long quot;
        long rem;
} ldiv_t;




typedef struct {
        long long quot;
        long long rem;
} lldiv_t;
#line 105 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\stdlib.h"
typedef void (__cdecl * atexit_t)(void);
#line 120 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\stdlib.h"
typedef void (__cdecl *constraint_handler_t)(const char * __msg,
            void * __ptr,
            errno_t __error);

constraint_handler_t __cdecl set_constraint_handler_s(constraint_handler_t __handler);
void __cdecl abort_handler_s(const char * __msg,
     void * __ptr,
     errno_t __error);
void __cdecl ignore_handler_s(const char * __msg,
      void * __ptr,
      errno_t __error);

errno_t __cdecl getenv_s(size_t * len, char * value,
        rsize_t maxsize, const char * name);
errno_t __cdecl wgetenv_s(size_t * len, wchar_t * value,
         rsize_t maxsize, const wchar_t * name);



void __cdecl __declspec(noreturn) abort(void);
#line 155 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\stdlib.h"
int __cdecl abs(int __x);


int __cdecl atexit(void (__cdecl * __func)(void));
double __cdecl atof(const char * __s);
int __cdecl atoi(const char * __s);
long __cdecl atol(const char * __s);
void * __cdecl calloc(size_t __nitems, size_t __size);
div_t __cdecl div(int __numer, int __denom);
void __cdecl __declspec(noreturn) exit(int __status);
void __cdecl free(void * __block);
char * __cdecl getenv(const char * __name);
long __cdecl labs(long __x);
long long __cdecl llabs(long long __x);
ldiv_t __cdecl ldiv(long __numer, long __denom);
lldiv_t __cdecl lldiv(long long __numer, long long __denom);
void * __cdecl malloc(size_t __size);
int __cdecl mblen(const char * __s, size_t __n);
size_t __cdecl mbstowcs(wchar_t *__pwcs, const char * __s,
                                     size_t __n);
size_t __cdecl _mbstrlen(const char *__s);
int __cdecl mbtowc(wchar_t *__pwc, const char * __s, size_t __n);
int __cdecl mbtowc_cp(wchar_t *__pwc, const char * __s, size_t __n, const unsigned _codepage);
int __cdecl rand(void);



void * __cdecl realloc(void * __block, size_t __size);
void __cdecl srand(unsigned __seed);

float __cdecl strtof(const char * __s, char * *__endptr);

double __cdecl strtod(const char * __s, char * *__endptr);
long __cdecl strtol(const char * __s, char * *__endptr, int __radix);
long long __cdecl strtoll(const char * __s, char * *__endptr, int __radix);

long double __cdecl _strtold(const char * __s, char * *__endptr);

long double __cdecl strtold(const char * __s, char * *__endptr);
unsigned long __cdecl strtoul(const char * __s, char * *__endptr, int __radix);
unsigned long long __cdecl strtoull(const char * __s, char * *__endptr, int __radix);
int __cdecl system(const char * __command);

size_t __cdecl wcstombs(char * __s, const wchar_t *__pwcs,size_t __n);
int __cdecl wctomb(char * __s, wchar_t __wc);
int __cdecl wctomb_cp(char * __s, wchar_t __wc, const unsigned _codepage);
double __cdecl _wtof(const wchar_t * __s);
int __cdecl _wtoi(const wchar_t * __s);
long __cdecl _wtol(const wchar_t * __s);
long double __cdecl _wtold(const wchar_t * __s);

float __cdecl wcstof(const wchar_t * __s, wchar_t * *__endptr);

double __cdecl wcstod(const wchar_t * __s, wchar_t * *__endptr);
long double __cdecl wcstold(const wchar_t * __s, wchar_t * *__endptr);
long __cdecl wcstol(const wchar_t * __s, wchar_t * *__endptr, int __radix);
long long __cdecl wcstoll(const wchar_t * __s, wchar_t * *__endptr, int __radix);

long double __cdecl _wcstold(const wchar_t * __s, wchar_t * *__endptr);

unsigned long __cdecl wcstoul(const wchar_t * __s, wchar_t * *__endptr, int __radix);
unsigned long long __cdecl wcstoull(const wchar_t * __s, wchar_t * *__endptr, int __radix);
int __cdecl _wsystem(const wchar_t * __command);
wchar_t * __cdecl _itow(int __value, wchar_t *__string, int __radix);
wchar_t * __cdecl _ltow(long __value, wchar_t *__string, int __radix);
wchar_t * __cdecl _ultow(unsigned long __value, wchar_t *__string, int __radix);



__int64 __cdecl _atoi64(const char * __s);
char * __cdecl _i64toa(__int64 __value, char *__strP, int __radix);
char * __cdecl _ui64toa(unsigned __int64 __value, char *__strP, int __radix);
__int64 __cdecl _wtoi64(const wchar_t * __s);
wchar_t * __cdecl _i64tow(__int64 __value, wchar_t *__strP, int __radix);
wchar_t * __cdecl _ui64tow(unsigned __int64 __value, wchar_t *__strP, int __radix);

char * __cdecl ltoa(long __value, char * __string, int __radix);
char * __cdecl ecvt(double __value, int __ndig, int * __dec, int * __sign);
char * __cdecl fcvt(double __value, int __ndig, int * __dec, int * __sign);
char * __cdecl gcvt(double __value, int __ndec, char * __buf);




extern int __cdecl __mb_cur_max;
#line 253 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\stdlib.h"
void __cdecl _seterrormode(int __mode);



extern char ** __cdecl _environ;
extern wchar_t ** __cdecl _wenviron;
extern int __cdecl _fileinfo;
extern int __cdecl _fmode;
extern unsigned char __cdecl _osmajor;
extern unsigned char __cdecl _osminor;
extern unsigned char __cdecl _osmode;
extern unsigned int __cdecl _osversion;
extern int __cdecl _cmdline_escapes;

extern char * __cdecl _sys_errlist[];
extern int __cdecl _sys_nerr;
#line 304 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\stdlib.h"
long double __cdecl _atold(const char * __s);

unsigned char __cdecl _crotl(unsigned char __value, int __count);
unsigned char __cdecl _crotr(unsigned char __value, int __count);

char * __cdecl _ecvt(double __value, int __ndig, int * __dec,
                                     int * __sign);
void __cdecl __declspec(noreturn) _exit(int __status);
char * __cdecl _fcvt(double __value, int __ndig, int * __dec,
                                     int * __sign);
char * __cdecl _fullpath(char * __buf, const char * __path,
                                     size_t __maxlen);
char * __cdecl _gcvt(double __value, int __ndec,
                                     char * __buf);
char * __cdecl itoa(int __value, char * __string,
                                     int __radix);
long __cdecl _lrand(void);
unsigned long __cdecl _lrotl(unsigned long __val, int __count);
unsigned long __cdecl _lrotr(unsigned long __val, int __count);

char * __cdecl _ltoa(long __value, char * __string,
                                     int __radix);
void __cdecl _makepath(char * __path,
                                     const char * __drive,
                                     const char * __dir,
                                     const char * __name,
                                     const char * __ext );
int __cdecl putenv(const char * __name);

unsigned short __cdecl _rotl(unsigned short __value, int __count);
unsigned short __cdecl _rotr(unsigned short __value, int __count);

void __cdecl _searchenv(const char * __file,
                                     const char * __varname,
                                     char *__pathname);
void __cdecl _searchstr(const char * __file,
                                     const char * __ipath,
                                     char *__pathname);
void __cdecl _splitpath(const char * __path,
                                     char * __drive,
                                     char * __dir,
                                     char * __name,
                                     char * __ext );


void __cdecl swab(const char * __from, char * __to, ssize_t __nbytes);


char * __cdecl ultoa(unsigned long __value, char * __string,
                                     int __radix);
void __cdecl perror(const char * __s);

void __cdecl _wperror(const wchar_t * __s);
wchar_t * __cdecl _wfullpath(wchar_t * __buf,const wchar_t * __path,
                                     size_t __maxlen);
void __cdecl _wmakepath(wchar_t * __path,
                                     const wchar_t * __drive,
                                     const wchar_t * __dir,
                                     const wchar_t * __name,
                                     const wchar_t * __ext );
void __cdecl _wsplitpath(const wchar_t * __path,
                                     wchar_t * __drive,
                                     wchar_t * __dir,
                                     wchar_t * __name,
                                     wchar_t * __ext );

void __cdecl _wsearchenv(const wchar_t * __file,
                                     const wchar_t * __varname,
                                     wchar_t *__pathname);
void __cdecl _wsearchstr(const wchar_t * __file,
                                     const wchar_t * __ipath,
                                     wchar_t *__pathname);
wchar_t * __cdecl _wgetenv(const wchar_t * __name);
int __cdecl _wputenv(const wchar_t * __name);
#line 397 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\stdlib.h"
long __cdecl time(long *);
#line 500 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\stdlib.h"
    extern int __cdecl _argc;
    extern char ** __cdecl _argv;



    extern wchar_t ** __cdecl _wargv;








#pragma pack(pop)
#line 528 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\stdlib.h"
#line 1 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\search.h"
#line 20 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\search.h"
#line 1 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_stddef.h"
#line 20 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\search.h"
#line 34 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\search.h"
void * __cdecl bsearch(const void * __key, const void * __base,
       size_t __nelem, size_t __width,
       int (__cdecl *fcmp)(const void *, const void *));

void * __cdecl lfind(const void * __key, const void * __base,
    size_t *__num, size_t __width,
                                int (__cdecl *fcmp)(const void *, const void *));

void * __cdecl lsearch(const void * __key, void * __base,
      size_t *__num, size_t __width,
      int (__cdecl *fcmp)(const void *, const void *));

void __cdecl qsort(void * __base, size_t __nelem, size_t __width,
     int (__cdecl *__fcmp)(const void *, const void *));


void * __cdecl bsearch_s(const void * __key, const void * __base,
         rsize_t __nelem, rsize_t __width,
         int (__cdecl *__fcmp)(const void *, const void *, void *),
         void *__context);

errno_t __cdecl qsort_s(void * __base, rsize_t __nelem, rsize_t __width,
        int (__cdecl *__fcmp)(const void *, const void *, void *),
        void *__context);
#line 528 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\stdlib.h"

#line 1 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\errno.h"
#line 22 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\errno.h"
#line 1 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_stddef.h"
#line 22 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\errno.h"
#line 441 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\errno.h"
extern int __cdecl _doserrno;




extern int * __cdecl __errno(void);
#line 458 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\errno.h"
extern int __cdecl _sys_nerr;
extern char * __cdecl _sys_errlist[];
#line 529 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\stdlib.h"
#line 5 "./functions.h"

#line 1 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\string.h"
#line 13 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\string.h"
#line 1 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_str.h"
#line 21 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_str.h"
#line 1 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_stddef.h"
#line 21 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_str.h"





#line 1 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\locale.h"
#line 13 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\locale.h"
#line 1 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_loc.h"
#line 19 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_loc.h"
#line 1 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_stddef.h"
#line 19 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_loc.h"
#line 54 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_loc.h"
struct lconv {

   char *decimal_point;
   char *thousands_sep;
   char *grouping;
   char *int_curr_symbol;
   char *currency_symbol;
   char *mon_decimal_point;
   char *mon_thousands_sep;
   char *mon_grouping;
   char *positive_sign;
   char *negative_sign;
   char int_frac_digits;
   char frac_digits;
   char p_cs_precedes;
   char p_sep_by_space;
   char n_cs_precedes;
   char n_sep_by_space;
   char p_sign_posn;
   char n_sign_posn;
};


#pragma pack(push, 1)








char * __cdecl setlocale( int __category, const char *__locale );
wchar_t * __cdecl _wsetlocale( int __category, const wchar_t *__locale );

char * __cdecl _lsetlocale( int __category, const char *__locale );
struct lconv * __cdecl localeconv( void );
struct lconv * __cdecl _llocaleconv( void );
wchar_t * __cdecl _lwsetlocale( int __category, const wchar_t *__locale );




#pragma pack(pop)
#line 13 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\locale.h"
#line 26 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_str.h"
#line 53 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_str.h"
size_t __cdecl strnlen_s(const char *__s, size_t __maxlen);
size_t __cdecl wcsnlen_s(const wchar_t *__s, size_t __maxlen);
errno_t __cdecl strerror_s(char *__s, rsize_t __maxsize, errno_t __errnum);
errno_t __cdecl _wcserror_s(wchar_t *__s, rsize_t __maxsize, errno_t __errnum);
size_t __cdecl strerrorlen_s(errno_t errnum);
errno_t __cdecl strncpy_s(char * dest, rsize_t destmax,
        const char * src, rsize_t n);
errno_t __cdecl wcsncpy_s(wchar_t * dest, rsize_t destmax,
        const wchar_t * src, rsize_t n);
errno_t __cdecl strcpy_s(char * dest, rsize_t destmax,
       const char * src);
errno_t __cdecl wcscpy_s(wchar_t * dest, rsize_t destmax,
       const wchar_t * src);
errno_t __cdecl strncat_s(char * dest, rsize_t destmax,
        const char * src, rsize_t n);
errno_t __cdecl wcsncat_s(wchar_t * dest, rsize_t destmax,
        const wchar_t * src, rsize_t n);
errno_t __cdecl strcat_s(char * dest, rsize_t destmax,
       const char * src);
errno_t __cdecl wcscat_s(wchar_t * dest, rsize_t destmax,
       const wchar_t * src);
char * __cdecl strtok_s(char * __s1, rsize_t * __s1max,
       const char * __s2, char ** __ptr);
wchar_t * __cdecl wcstok_s(wchar_t * __s1, rsize_t * __s1max,
       const wchar_t * __s2, wchar_t ** __ptr);


size_t __cdecl wcslen(const wchar_t *__s);
wchar_t * __cdecl wcscpy(wchar_t *__dst, const wchar_t *__src);
wchar_t * __cdecl wcscat(wchar_t *__dest, const wchar_t *__src);
int __cdecl wcscmp(const wchar_t *__s1, const wchar_t *__s2);
int __cdecl wcscoll(const wchar_t * __s1, const wchar_t * __s2);
size_t __cdecl wcscspn(const wchar_t *__s1, const wchar_t *__s2);
wchar_t * __cdecl _wcsdup(const wchar_t *__s);
int __cdecl wcsncmp(const wchar_t *__s1, const wchar_t *__s2, size_t __maxlen);
wchar_t * __cdecl wcsncpy(wchar_t *__dest, const wchar_t *__src, size_t __maxlen);
wchar_t * __cdecl _wcsnset(wchar_t *__s, wchar_t __ch, size_t __n);
wchar_t * __cdecl wcspbrk(const wchar_t *__s1, const wchar_t *__s2);
wchar_t * __cdecl wcsrchr(const wchar_t *__s, wchar_t __c);
wchar_t * __cdecl _wcsrev(wchar_t *__s);
wchar_t * __cdecl _wcsset(wchar_t*__s, wchar_t __ch);
size_t __cdecl wcsspn(const wchar_t *__s1, const wchar_t *__s2);
wchar_t * __cdecl wcsstr(const wchar_t *__s1, const wchar_t *__s2);
wchar_t * __cdecl wcstok(wchar_t *__s1, const wchar_t *__s2);
wchar_t * __cdecl wcsncat(wchar_t *__dest, const wchar_t *__src, size_t __maxlen);
wchar_t * __cdecl wcspcpy(wchar_t *__dest, const wchar_t *__src);
wchar_t * __cdecl _wcspcpy(wchar_t *__dest, const wchar_t *__src);
int __cdecl _wcsicmp(const wchar_t *__s1, const wchar_t *__s2);
int __cdecl _wcsnicmp(const wchar_t *__s1, const wchar_t *__s2, size_t __maxlen);
wchar_t * __cdecl _wcslwr(wchar_t *__s);
wchar_t * __cdecl _wcsupr(wchar_t *__s);
wchar_t * __cdecl _lwcslwr(wchar_t *__s);
wchar_t * __cdecl _lwcsupr(wchar_t *__s);
wchar_t * __cdecl __wcserror(const wchar_t *__s);
wchar_t * __cdecl _wcserror(int __errnum);


wchar_t * __cdecl wcschr(const wchar_t *__s, wchar_t __c);







char * __cdecl strcat(char *__dest, const char *__src);
int __cdecl strcmp(const char *__s1, const char *__s2);
char * __cdecl strcpy(char *__dest, const char *__src);
size_t __cdecl strlen(const char *__s);
char * __cdecl strncat(char *__dest, const char *__src,
                                        size_t __maxlen);
int __cdecl strncmp(const char *__s1, const char *__s2,
                                        size_t __maxlen);
char * __cdecl strncpy(char *__dest, const char *__src,
                                        size_t __maxlen);
size_t __cdecl strcspn(const char *__s1, const char *__s2);
char * __cdecl strerror(int __errnum);
size_t __cdecl strspn(const char *__s1, const char *__s2);
char * __cdecl strtok(char *__s1, const char *__s2);
char * __cdecl _strerror(const char *__s);






char * __cdecl _lstrlwr(char *__s);
char * __cdecl _lstrupr(char *__s);
char * __cdecl stpcpy(char *__dest, const char *__src);
char * __cdecl _stpcpy(char *__dest, const char *__src);
char * __cdecl strdup(const char *__s);
int __cdecl stricmp(const char *__s1, const char *__s2);
char * __cdecl strlwr(char *__s);
int __cdecl strnicmp(const char *__s1, const char *__s2,
                                           size_t __maxlen);
char * __cdecl strnset(char *__s, int __ch, size_t __n);
char * __cdecl strrev(char *__s);
char * __cdecl strset(char *__s, int __ch);
char * __cdecl strupr(char *__s);
#line 171 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_str.h"
          char * __cdecl strchr(const char * __s, int __c);
          char * __cdecl strrchr(const char *__s, int __c);
          char * __cdecl strpbrk(const char *__s1, const char *__s2);
          char * __cdecl strstr(const char *__s1, const char *__s2);
#line 350 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_str.h"
int __cdecl _lstrcoll(const char * __s1, const char * __s2);
int __cdecl _lstricoll(const char * __s1, const char * __s2);
int __cdecl _lstrncoll(const char * __s1, const char * __s2, const int __len);
int __cdecl _lstrnicoll(const char * __s1, const char * __s2, int __len);
size_t __cdecl _lstrxfrm(char * __s1, const char * __s2,size_t __n );
int __cdecl _stricoll(const char * __s1, const char * __s2);
int __cdecl _strncoll(const char * __s1, const char * __s2, size_t __n);
int __cdecl _strnicoll(const char * __s1, const char * __s2, int __len);





int __cdecl strcoll(const char * __s1, const char * __s2);
size_t __cdecl strxfrm(char * __s1, const char * __s2,size_t __n );





int __cdecl _lwcscoll(const wchar_t * __s1, const wchar_t * __s2);
int __cdecl _lwcsicoll(const wchar_t * __s1, const wchar_t * __s2);
int __cdecl _lwcsncoll(const wchar_t * __s1, const wchar_t * __s2, const int __len);
int __cdecl _lwcsnicoll(const wchar_t * __s1, const wchar_t * __s2, int __len);
size_t __cdecl _lwcsxfrm(wchar_t * __s1, const wchar_t * __s2,size_t __n );
int __cdecl wcscoll(const wchar_t * __s1, const wchar_t * __s2);
int __cdecl _wcsicoll(const wchar_t * __s1, const wchar_t * __s2);
int __cdecl _wcsncoll(const wchar_t * __s1, const wchar_t * __s2, size_t __n);
int __cdecl _wcsnicoll(const wchar_t * __s1, const wchar_t * __s2, int __len);
size_t __cdecl wcsxfrm(wchar_t * __s1, const wchar_t * __s2, size_t __n );
#line 454 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_str.h"
#line 1 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\mem.h"
#line 20 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\mem.h"
#line 1 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_stddef.h"
#line 20 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\mem.h"
#line 40 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\mem.h"
errno_t __cdecl memcpy_s(void * __dest, rsize_t __destmax,
         const void * __src, rsize_t __n);
errno_t __cdecl memmove_s(void * __dest, rsize_t __destmax,
          const void * __src, rsize_t __n);
errno_t __cdecl wmemcpy_s(wchar_t * __dest, rsize_t __destmax,
          const wchar_t * __src, rsize_t __n);
errno_t __cdecl wmemmove_s(wchar_t * __dest, rsize_t __destmax,
           const wchar_t * __src, rsize_t __n);


void * __cdecl memccpy(void *__dest, const void *__src,
                                        int __c, size_t __n);
int __cdecl memcmp(const void *__s1, const void *__s2,
                                       size_t __n);
void * __cdecl memcpy(void *__dest, const void *__src,
                                       size_t __n);
int __cdecl memicmp(const void *__s1, const void *__s2,
                                        size_t __n);
void * __cdecl memmove(void *__dest, const void *__src,
                                        size_t __n);
void * __cdecl memset(void *__s, int __c, size_t __n);

wchar_t * __cdecl wmemset(wchar_t *__s, int __c, size_t __n);
wchar_t * __cdecl wmemcpy(wchar_t *__dest, const wchar_t *__src, size_t __n);
wchar_t * __cdecl wmemmove(wchar_t *__dest, const wchar_t *__src, size_t __n);
wchar_t * __cdecl wmemchr(const wchar_t *__s, int __c, size_t __n);
int __cdecl wmemcmp(const wchar_t *__s1, const wchar_t *__s2, size_t __n);


wchar_t * __cdecl _wmemset(wchar_t *__s, int __c, size_t __n);
wchar_t * __cdecl _wmemcpy(wchar_t *__dest, const wchar_t *__src, size_t __n);
#line 81 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\mem.h"
          void * __cdecl memchr(const void *__s, int __c, size_t __n);
          wchar_t * __cdecl _wmemchr(const wchar_t *__s, int __c, size_t __n);
#line 454 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_str.h"
#line 13 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\string.h"
#line 6 "./functions.h"

#line 1 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\time.h"
#line 21 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\time.h"
#line 1 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\_stddef.h"
#line 21 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\time.h"
#line 33 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\time.h"
#pragma pack(push, 1)








typedef long time_t;
#line 53 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\time.h"
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






errno_t __cdecl asctime_s(char *s, rsize_t maxsize, const struct tm *tmPtr);
errno_t __cdecl wasctime_s(wchar_t *s, rsize_t maxsize, const struct tm *tmPtr);
errno_t __cdecl ctime_s(char *s, rsize_t maxsize, const time_t *timer);
errno_t __cdecl wctime_s(wchar_t *s, rsize_t maxsize, const time_t *timer);
struct tm * __cdecl gmtime_s(const time_t * clock,
     struct tm * result);
struct tm * __cdecl localtime_s(const time_t * clock,
        struct tm * result);


char * __cdecl asctime(const struct tm *__tblock);
char * __cdecl ctime(const time_t *__time);
double __cdecl difftime(time_t __time2, time_t __time1);
struct tm * __cdecl gmtime(const time_t *__timer);
struct tm * __cdecl localtime(const time_t *__timer);
time_t __cdecl time(time_t *__timer);
time_t __cdecl mktime(struct tm *__timeptr);
clock_t __cdecl clock(void);
size_t __cdecl strftime(char *__s, size_t __maxsize,
                                        const char *__fmt, const struct tm *__t);
char * __cdecl strptime(const char *__s,
                                        const char *__fmt, struct tm *__t);
size_t __cdecl _lstrftim(char *__s, size_t __maxsize,
                                          const char *__fmt, const struct tm *__t);
wchar_t * __cdecl _wasctime(const struct tm *__tblock);
wchar_t * __cdecl _wctime(const time_t *__time);
wchar_t * __cdecl _wstrdate(wchar_t *__datestr);
wchar_t * __cdecl _wstrtime(wchar_t *__timestr);
size_t __cdecl wcsftime(wchar_t *__s, size_t __maxsize,
                                        const wchar_t *__fmt, const struct tm *__t);
void __cdecl _wtzset(void);

extern int __cdecl _daylight;
extern long __cdecl _timezone;






extern char * __cdecl _tzname[3];
extern wchar_t * __cdecl _wtzname[3];


extern unsigned char __cdecl _PREFER_END_STANDARD_TIME;
extern unsigned char __cdecl _PREFER_START_DAYLIGHT_TIME;
#pragma obsolete _PREFER_END_STANDARD_TIME
#pragma obsolete _PREFER_START_DAYLIGHT_TIME

int __cdecl stime(time_t *__tp);
void __cdecl _tzset(void);
char * __cdecl _strdate(char *__datestr);
char * __cdecl _strtime(char *__timestr);


void __cdecl tzset(void);


unsigned int __cdecl _getsystime(struct tm *__timeptr);
unsigned int __cdecl _setsystime(struct tm *__timeptr, unsigned int __ms);
#line 148 "C:\\BCC102\\BCC102\\bin\\..\\include\\windows\\crtl\\time.h"
#pragma pack(pop)
#line 7 "./functions.h"


   int tavern(int player_gold);
   int hello(char *nickname);
   int battle(int player_gold);
#line 2 "functions.c"


int tavern(int player_gold)
{
    int ale_mug_cost =3;
    if(player_gold>=3)
    {
      printf("You've bought mug of ale for %d gold!\n"
         "Now you have %d gold left\n",ale_mug_cost,player_gold-=ale_mug_cost);
    }
    else
        printf("You don't have enough gold to buy an ale:(\n");
    return player_gold;
}


int hello(char *nickname)
    {
      int len;
      char c;
       printf("What is your name?\n");
      fgets(nickname,sizeof(nickname),(&_streams[0]));
      len=strlen(nickname);

        if(nickname[len-1]=='\n')
          nickname[len-1]='\0';
      else
          while ((c=((--(((&_streams[0]))->level) >= 0) ? (unsigned char)(*((&_streams[0]))->curp++) : _fgetc ((&_streams[0])))!='\n') && c!=(-1) )
          ;

             return 0;
    }

int battle(int player_gold)
{
    srand(time(0));
     int goblin_gold=rand()%15
     ;
    for( int goblin_hp=rand()%3;goblin_hp>=0;goblin_hp--)
        {
            if(goblin_hp!=3 && goblin_hp!=0)
               printf("You kicked the goblin!HP=%d\n",goblin_hp);


         if (goblin_hp==0)
         {
            printf("Goblin is defeated!\n");
            printf("You get %d gold coins!\n",goblin_gold);
            printf("Gold total =%d\n",player_gold+=goblin_gold);
             break;
         }
        }

  return player_gold;
}
