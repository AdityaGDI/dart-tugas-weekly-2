import 'dart:io';
import 'ClassBook.dart';
void main() {
  Book myBook = Book();
  
  while (true) {
    print("Pilih opsi:");
    print("1. Tambah buku");
    print("2. Hapus buku");
    print("3. Tampilkan semua buku");
    print("4. Keluar");

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        myBook.tambah();
        break;
      case '2':
        myBook.kurang();
        break;
      case '3':
        myBook.tampil();
        break;
      case '4':
        print("Keluar dari program.");
        return;
      default:
        print("Pilihan tidak valid, silakan coba lagi.\n");
    }
  }
}
