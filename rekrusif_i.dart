import 'dart:io';
int faktorial(int x) {
if (x == 1) {
return x; // Basis kasus
} else {
return x * faktorial(x - 1); // Rekursi
}
}
void main() {
stdout.write("N = ");
int n = int.parse(stdin.readLineSync()!);
print("Hasil = ${faktorial(n)}");
}