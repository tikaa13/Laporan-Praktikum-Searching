class DataList {
  List<String> data; // Atribut untuk menyimpan daftar data

  // Konstruktor untuk menginisialisasi data sebagai list kosong
  DataList() : data = [];

  // Menambahkan data ke dalam list
  void addData(String value) {
    data.add(value);
  }

  // Menyisipkan data sebelum kunci
  void insertBefore(String key, String value) {
    int index = data.indexOf(key); // Mencari indeks dari elemen kunci
    if (index != -1) {
      // Memeriksa apakah elemen kunci ditemukan
      data.insert(index, value); // Menyisipkan value sebelum kunci
      print('"$value" disisipkan sebelum "$key".');
    } else {
      print('Data kunci "$key" tidak ditemukan.');
    }
  }

  // Menyisipkan data setelah kunci
  void insertAfter(String key, String value) {
    int index = data.indexOf(key); // Mencari indeks dari elemen kunci
    if (index != -1) {
      // Memeriksa apakah elemen kunci ditemukan
      data.insert(index + 1, value); // Menyisipkan value setelah kunci
      print('"$value" disisipkan setelah "$key".');
    } else {
      print('Data kunci "$key" tidak ditemukan.');
    }
  }

  // Menghapus data kunci
  void removeKey(String key) {
    if (data.remove(key)) {
      // Menghapus elemen yang sesuai dengan key
      print('Data kunci "$key" telah dihapus.');
    } else {
      print('Data kunci "$key" tidak ditemukan.');
    }
  }

  // Menampilkan semua data
  void displayData() {
    print('Data: $data');
  }
}

void main() {
  DataList dataList = DataList();

  // Menambahkan data
  dataList.addData('1');
  dataList.addData('5');
  dataList.addData('3');

  print('Data sebelum penyisipan:');
  dataList.displayData();

  // Menyisipkan data sebelum dan sesudah kunci
  dataList.insertBefore('5', '10'); // Menyisipkan '10' sebelum '5'
  dataList.insertAfter('5', '7'); // Menyisipkan '7' setelah '5'

  print('Data setelah penyisipan:');
  dataList.displayData();

  // Menghapus data kunci
  dataList.removeKey('3'); // Menghapus '3'
  print('Data setelah penghapusan:');
  dataList.displayData();

  // Mencoba menghapus data yang tidak ada
  dataList.removeKey('3'); // Menghapus '3' yang tidak ada
}
