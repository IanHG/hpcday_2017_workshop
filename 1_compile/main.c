#include <stdio.h>

/* 
 * Some preprocessor magic
 */
#define xstr(s) str(s)
#define str(s) #s

#if defined __INTEL_COMPILER
   #define COMPILER intel-__INTEL_COMPILER
#elif defined __GNUC__
   #define COMPILER gcc-__GNUC__.__GNUC_MINOR__.__GNUC_PATCHLEVEL__
#elif defined __PGI
   #define COMPILER pgi-__PGIC__.__PGIC_MINOR__.__PGIC_PATCHLEVEL__
#endif

/* 
 * Actual program
 */
int main(int argc, char* argv[])
{
   printf("Hello World\n");
   printf("Compiler version: " xstr(COMPILER) "\n");

   return 0;
}
