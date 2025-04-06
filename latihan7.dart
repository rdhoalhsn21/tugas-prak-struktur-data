class Pegawai {
  int nip;
  String nama;
  int indexAsli;

  Pegawai(this.nip, this.nama, this.indexAsli);
}

// Binary Search
int binarySearch(List<Pegawai> data, int targetNIP) {
  int kiri = 0;
  int kanan = data.length - 1;

  while (kiri <= kanan) {
    int tengah = (kiri + kanan) ~/ 2;

    if (data[tengah].nip == targetNIP) {
      return data[tengah].indexAsli; // Mengembalikan indeks asli
    } else if (data[tengah].nip < targetNIP) {
      kiri = tengah + 1;
    } else {
      kanan = tengah - 1;
    }
  }

  return -1; // Tidak ditemukan
}

void main() {
  // Data acak (tidak terurut)
  List<Pegawai> pegawaiList = [
    Pegawai(105, "Eka", 0),
    Pegawai(101, "Andi", 1),
    Pegawai(104, "Dian", 2),
    Pegawai(103, "Citra", 3),
    Pegawai(102, "Budi", 4),
  ];

  int targetNIP = 103;

  // Salin dan urutkan berdasarkan NIP untuk Binary Search
  List<Pegawai> dataUrut = List.from(pegawaiList);
  dataUrut.sort((a, b) => a.nip.compareTo(b.nip));

  int indeksAsli = binarySearch(dataUrut, targetNIP);

  if (indeksAsli != -1) {
    print("Pegawai dengan NIP $targetNIP ditemukan pada indeks asli ke-$indeksAsli");
  } else {
    print("Pegawai dengan NIP $targetNIP tidak ditemukan.");
  }
}
