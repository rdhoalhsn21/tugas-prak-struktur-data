import 'dart:io';

class Pegawai {
  int nip;
  String nama;
  String alamat;
  String golongan;

  Pegawai(this.nip, this.nama, this.alamat, this.golongan);
}

// Sequential Search
int sequentialSearch(List<Pegawai> data, int key, int comparisons) {
  for (int i = 0; i < data.length; i++) {
    comparisons++;
    if (data[i].nip == key) {
      print("Sequential Search: Jumlah perbandingan = $comparisons");
      return i;
    }
  }
  print("Sequential Search: Jumlah perbandingan = $comparisons");
  return -1;
}

// Binary Search (Pastikan data sudah terurut berdasarkan NIP)
int binarySearch(List<Pegawai> data, int key, int comparisons) {
  int left = 0, right = data.length - 1;

  while (left <= right) {
    comparisons++;
    int mid = left + (right - left) ~/ 2;

    if (data[mid].nip == key) {
      print("Binary Search: Jumlah perbandingan = $comparisons");
      return mid;
    } else if (data[mid].nip < key) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }
  
  print("Binary Search: Jumlah perbandingan = $comparisons");
  return -1;
}

void main() {
  List<Pegawai> pegawaiList = [
    Pegawai(1001, "Andi", "Jakarta", "A"),
    Pegawai(1002, "Budi", "Bandung", "B"),
    Pegawai(1003, "Citra", "Surabaya", "C"),
    Pegawai(1004, "Dedi", "Medan", "A"),
    Pegawai(1005, "Eka", "Bali", "B"),
  ];

  int key = 1003; // NIP yang ingin dicari

  // Sequential Search
  int comparisons = 0;
  int indexSequential = sequentialSearch(pegawaiList, key, comparisons);
  print("Hasil Sequential Search: Index = $indexSequential\n");

  // Binary Search (Pastikan data sudah terurut)
  comparisons = 0;
  pegawaiList.sort((a, b) => a.nip.compareTo(b.nip)); // Urutkan berdasarkan NIP
  int indexBinary = binarySearch(pegawaiList, key, comparisons);
  print("Hasil Binary Search: Index = $indexBinary\n");
}
