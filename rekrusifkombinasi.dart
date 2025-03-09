void charCombination(String a, int n) {
if (n == 0) {
stdout.write('$a '); // Cetak kombinasi
} else {
for (int i = 97; i < 99; i++) { // ASCII 97 ('a') hingga 98 ('b')
charCombination(a + String.fromCharCode(i), n - 1);
}
}
}
void main() {
charCombination("", 2); // Panggil fungsi dengan kombinasi awal dan
kedalaman 2
}