void insertionSort<T extends Comparable<T>>(List<T> arr, {bool ascending = true}) {
  for (int i = 1; i < arr.length; i++) {
    T key = arr[i];
    int j = i - 1;

    // Tentukan kondisi berdasarkan mode pengurutan
    while (j >= 0 && (ascending ? arr[j].compareTo(key) > 0 : arr[j].compareTo(key) < 0)) {
      arr[j + 1] = arr[j];
      j--;
    }
    arr[j + 1] = key;
  }
}

void display<T>(List<T> data) {
  print(data.join(' '));
}

void main() {
  List<num> data = List<num>.generate(10, (index) => (index + 1) * 2);
  data.shuffle();
  
  print('Data Sebelum Pengurutan:');
  display(data);

  // Sorting Ascending
  insertionSort<num>(data, ascending: true);
  print('Data Setelah Pengurutan Ascending:');
  display(data);

  // Shuffle ulang untuk sorting descending
  data.shuffle();
  
  // Sorting Descending
  insertionSort<num>(data, ascending: false);
  print('Data Setelah Pengurutan Descending:');
  display(data);
}
