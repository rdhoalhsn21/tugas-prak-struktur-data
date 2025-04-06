// Deklarasi class Pegawai
class Pegawai {
  int nip;
  String nama;
  String alamat;
  String golongan;

  Pegawai(this.nip, this.nama, this.alamat, this.golongan);
}

// Binary Search berdasarkan NIP
int binarySearchByNIP(List<Pegawai> data, int nip) {
  int left = 0;
  int right = data.length - 1;

  while (left <= right) {
    int mid = (left + right) ~/ 2;
    if (data[mid].nip == nip) {
      return mid;
    } else if (data[mid].nip < nip) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }
  return -1;
}

// Binary Search berdasarkan Nama
int binarySearchByNama(List<Pegawai> data, String nama) {
  int left = 0;
  int right = data.length - 1;

  while (left <= right) {
    int mid = (left + right) ~/ 2;
    int cmp = data[mid].nama.toLowerCase().compareTo(nama.toLowerCase());
    if (cmp == 0) {
      return mid;
    } else if (cmp < 0) {
      left = mid + 1;
    } else {
      right = mid - 1;
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

  // Pastikan data sudah terurut berdasarkan kunci pencarian
  pegawaiList.sort((a, b) => a.nip.compareTo(b.nip));
  int indexNIP = binarySearchByNIP(pegawaiList, 103);
  print(indexNIP != -1
      ? 'Pegawai ditemukan di indeks $indexNIP'
      : 'Pegawai tidak ditemukan');

  pegawaiList.sort((a, b) => a.nama.toLowerCase().compareTo(b.nama.toLowerCase()));
  int indexNama = binarySearchByNama(pegawaiList, 'Budi');
  print(indexNama != -1
      ? 'Pegawai ditemukan di indeks $indexNama'
      : 'Pegawai tidak ditemukan');
}
