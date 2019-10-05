int n_sum(int n, ...) {
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
