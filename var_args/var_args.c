int printf(const char *, ...);

int n_sum(int n, ...) {
  int d;
  __asm__ ("mov 0x10(%%rbp), %0" :"=r" (d));
  printf("%d\n", d);
  int sum=0, secondloop = n-5;
  int *po, *no;
  __asm__ (
    "lea (%%rbp),%0"
    : "=r" (no)
  );
  po = no+4; // Dont want the address
  no-=42;   // where second arg is loaded
  if (n < 6) {
    for(int i = 0; i < n; i++){
      // printf("%d\n", *no);
      sum += *no;
      no+=2;
    }
  }
  else {
    for(int i = 0; i < 5; i++){
      // printf("%d\n", *no);
      sum += *no;
      no+=2;
    }
    for(int i = 0; i < secondloop; i++) {
      sum += *po;
      po+=2;
    }
  }
  return sum;
}

int main(void) {
  int sum = n_sum(10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
  printf("%d\n", sum);
  return 0;
}
