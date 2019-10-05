#include <stdio.h>
int n_sum(int n, ...);

int main(int argc, char const *argv[]) {
  int n;
  printf("This program prints the sum of first 20 natural numbers\n");
  n = n_sum(20, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20);
  printf("%d\n", n);
  return 0;
}
