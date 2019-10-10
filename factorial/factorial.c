#include<stdio.h>
extern long int factorial(long int);

void main() {
 long int n, ans;
 scanf("%lu", &n);
 ans = factorial(n);
 printf("%lu\n", ans);
 return;
}
