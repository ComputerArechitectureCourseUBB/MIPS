#include <stdio.h>


int suma(int *x, int *y){


  return *x+*y;
}

void main(void){

  int a;
  int b;
  int c;

  a = 2;
  b = 1;
  c = 0;

  c = suma(&a,&b);
  c = c + 1;


}
