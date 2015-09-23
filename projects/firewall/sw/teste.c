#include <stdio.h>
#include <stdlib.h>

int main()
{ 
   srand(1); 
   for(int i=0;i<10;i++)
      printf("random: %lf, ",drand48());
   return 0;
}
