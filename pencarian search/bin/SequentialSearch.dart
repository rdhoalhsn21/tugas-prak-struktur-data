// Deklarasi class Pegawai
class Pegawai {
  int nip;
  String nama;
  String alamat;
  String golongan;

  Pegawai(this.nip, this.nama, this.alamat, this.golongan);
}

// Sequential Search berdasarkan NIP
int sequentialSearchByNIP(List<Pegawai> data, int nip) {
  for (int i = 0; i < data.length; i++) {
    if (data[i].nip == nip) {
      return i;
    }
  }
  return -1;
}

// Sequential Search berdasarkan Nama
int sequentialSearchByNama(List<Pegawai> data, String nama) {
  for (int i = 0; i < data.length; i++) {
    if (data[i].nama.toLowerCase() == nama.toLowerCase()) {
      return i;
    }
  }
  return -1;
}

// Contoh penggunaan
void main() {
  List<Pegawai> pegawaiList = [
    Pegawai(101, 'Andi', 'Jakarta', 'A'),
    Pegawai(102, 'Budi', 'Bandung', 'B'),
    Pegawai(103, 'Citra', 'Surabaya', 'C'),
  ];

  int indexNIP = sequentialSearchByNIP(pegawaiList, 102);
  print(indexNIP != -1
      ? 'Pegawai ditemukan di indeks $indexNIP'
      : 'Pegawai tidak ditemukan');

  int indexNama = sequentialSearchByNama(pegawaiList, 'Citra');
  print(indexNama != -1
      ? 'Pegawai ditemukan di indeks $indexNama'
      : 'Pegawai tidak ditemukan');
}
