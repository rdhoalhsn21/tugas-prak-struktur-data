import 'dart:io';

// Fungsi rekursif untuk Binary Search
int binarySearch(List<int> arr, int target, int left, int right) {
  if (left > right) {
    return -1; // Target tidak ditemukan
  }

  int mid = left + (right - left) ~/ 2; // Menghindari integer overflow
  if (arr[mid] == target) {
    return mid; // Target ditemukan
  } else if (arr[mid] > target) {
    return binarySearch(arr, target, left, mid - 1); // Cari di kiri
  } else {
    return binarySearch(arr, target, mid + 1, right); // Cari di kanan
  }
}

void main() {
  // Data (harus terurut)
  List<int> data = [2, 5, 8, 12, 16, 23, 38, 45, 56, 72, 91];

  print("Data dalam array: $data");
  stdout.write("Masukkan angka yang ingin dicari: ");
  int target = int.parse(stdin.readLineSync()!);

  int hasil = binarySearch(data, target, 0, data.length - 1);

  if (hasil != -1) {
    print("Angka $target ditemukan di indeks $hasil.");
  } else {
    print("Angka $target tidak ditemukan dalam array.");
  }
}