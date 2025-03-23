class Mahasiswa implements Comparable<Mahasiswa> {
  String nrp;
  String nama;

  Mahasiswa(this.nrp, this.nama);

  @override
  int compareTo(Mahasiswa other) {
    return nrp.compareTo(other.nrp);
  }

  @override
  String toString() {
    return "Mahasiswa(nrp: $nrp, nama: $nama)";
  }
}

void main() {
  List<Mahasiswa> daftarMahasiswa = [
    Mahasiswa("2102", "Ridho"),
    Mahasiswa("2108", "Huda"),
    Mahasiswa("2055", "Andika")
  ];

  print("Sebelum diurutkan:");
  print(daftarMahasiswa);

  daftarMahasiswa.sort(); 

  print("\nSetelah diurutkan:");
  print(daftarMahasiswa);
}