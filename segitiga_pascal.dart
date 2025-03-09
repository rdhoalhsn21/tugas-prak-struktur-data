import 'dart:io';

// Fungsi rekursif untuk menghitung faktorial
int faktorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  }
  return n * faktorial(n - 1);
}

// Fungsi rekursif untuk menghitung kombinasi C(n, k) = n! / (k! * (n-k)!)
int kombinasi(int n, int k) {
  if (k == 0 || k == n) {
    return 1;
  }
  return kombinasi(n - 1, k - 1) + kombinasi(n - 1, k);
}

// Fungsi untuk mencetak segitiga Pascal hingga baris tertentu
void cetakSegitigaPascal(int baris) {
  for (int i = 0; i < baris; i++) {
    // Cetak spasi agar terlihat seperti segitiga
    stdout.write(' ' * (baris - i));

    // Cetak nilai pada baris ke-i
    for (int j = 0; j <= i; j++) {
      stdout.write('${kombinasi(i, j)} ');
    }
    print('');
  }
}

// Fungsi utama (main)
void main() {
  stdout.write("Masukkan jumlah baris Segitiga Pascal: ");
  int n = int.parse(stdin.readLineSync()!);

  print("\nSegitiga Pascal:");
  cetakSegitigaPascal(n);
}
