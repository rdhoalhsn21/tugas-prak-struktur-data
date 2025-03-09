int fibonacciTailRecursive(int n, int a, int b) {
  if (n == 1) {
    return a;
  } 
  else if (n == 2) {
    return b;
  } 
  else {
    return fibonacciTailRecursive(n - 1, b, a + b);
  }
}

void main() {
  print(fibonacciTailRecursive(6, 1, 1));
}
