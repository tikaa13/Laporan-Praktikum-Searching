class pencarianAlgoritma {
  List<int> data;
  int linearComparisons = 0; // untuk menghitung perbandingan linear search
  int binaryComparisons = 0; // untuk menghitung perbandingan binary search

  pencarianAlgoritma(this.data);

  // Metode pencarian sequential
  int linearSearch(int target) {
    for (int i = 0; i < data.length; i++) {
      linearComparisons++;
      if (data[i] == target) {
        return i; // Mengembalikan indeks jika ditemukan
      }
    }
    return -1; // Jika tidak ditemukan
  }

  // Metode pencarian biner
  int binarySearch(int target) {
    int left = 0;
    int right = data.length - 1;

    while (left <= right) {
      int mid = (left + right) ~/ 2;
      binaryComparisons++;

      if (data[mid] == target) {
        return mid; // Mengembalikan indeks jika ditemukan
      } else if (data[mid] < target) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }
    return -1; // Jika tidak ditemukan
  }
}

void main() {
  // Contoh data
  List<int> numbers = [
    7,
    1,
    12,
    4,
    9,
    25,
    11,
    2,
    6
  ];

  // Mengurutkan data untuk binary search
  numbers.sort();

  pencarianAlgoritma searchAlgorithms = pencarianAlgoritma(numbers);

  // Target yang akan dicari
  int target = 11;

  // Melakukan pencarian linear
  int linearResult = searchAlgorithms.linearSearch(target);
  print('Linear Search:');
  print('Target $target ditemukan pada indeks: $linearResult');
  print('Jumlah perbandingan dalam Linear Search: ${searchAlgorithms.linearComparisons}');

  // Melakukan pencarian biner
  int binaryResult = searchAlgorithms.binarySearch(target);
  print('\nBinary Search:');
  print('Target $target ditemukan pada indeks: $binaryResult');
  print('Jumlah perbandingan dalam Binary Search: ${searchAlgorithms.binaryComparisons}');
}
