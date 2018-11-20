int printf(const char *, ...);
int  scanf(const char *, ...);

int main(void) {
  int num1, num2;
  // num2 = rbp - 4
  // num1 = rbp - 8
  printf("%s\t", "Enter the two numbers:" );
  scanf("%d %d", &num1, &num2);
  printf("Before swap: %d %d\n", num1, num2);
  __asm__ (
    "mov -0x4(%rbp), %eax\n"
    "mov -0x8(%rbp), %ebx\n"
    "mov %eax, -0x8(%rbp)\n"
    "mov %ebx, -0x4(%rbp)\n"
  );
  printf("Before swap: %d %d\n", num1, num2);
}
