class Pegawai {
  int nip;
  String nama;

  Pegawai(this.nip, this.nama);
}

// Sequential Search + Hitung Perbandingan
Map<String, dynamic> sequentialSearch(List<Pegawai> data, int targetNIP) {
  int comparisons = 0;
  for (int i = 0; i < data.length; i++) {
    comparisons++;
    if (data[i].nip == targetNIP) {
      return {
        'index': i,
        'comparisons': comparisons,
      };
    }
  }
  return {
    'index': -1,
    'comparisons': comparisons,
  };
}

// Binary Search + Hitung Perbandingan
Map<String, dynamic> binarySearch(List<Pegawai> data, int targetNIP) {
  int left = 0;
  int right = data.length - 1;
  int comparisons = 0;

  while (left <= right) {
    int mid = (left + right) ~/ 2;
    comparisons++;
    if (data[mid].nip == targetNIP) {
      return {
        'index': mid,
        'comparisons': comparisons,
      };
    } else if (data[mid].nip < targetNIP) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }

  return {
    'index': -1,
    'comparisons': comparisons,
  };
}

void main() {
  List<Pegawai> daftarPegawai = [
    Pegawai(101, "Andi"),
    Pegawai(102, "Budi"),
    Pegawai(103, "Citra"),
    Pegawai(104, "Dian"),
    Pegawai(105, "Eka"),
  ];

  int cariNIP = 104;

  // Sequential Search
  var resultSeq = sequentialSearch(daftarPegawai, cariNIP);
  print("Sequential Search:");
  print("  Index Ditemukan : ${resultSeq['index']}");
  print("  Jumlah Perbandingan: ${resultSeq['comparisons']}");

  // Binary Search (harus urut dulu)
  daftarPegawai.sort((a, b) => a.nip.compareTo(b.nip));
  var resultBin = binarySearch(daftarPegawai, cariNIP);
  print("\nBinary Search:");
  print("  Index Ditemukan : ${resultBin['index']}");
  print("  Jumlah Perbandingan: ${resultBin['comparisons']}");
}
