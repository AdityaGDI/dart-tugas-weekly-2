import 'dart:io';

class Book {
  List<Map<String, String>> _books = [];

  void tambah() {
    print("Masukkan judul buku:");
    String title = stdin.readLineSync() ?? "";
    
    print("Masukkan nama penulis:");
    String author = stdin.readLineSync() ?? "";
    
    print("Masukkan tahun terbit:");
    String year = stdin.readLineSync() ?? "";
    
    _books.add({
      "title": title,
      "Author": author,
      "year": year
    });
    
    print("Buku berhasil ditambahkan!\n");
  }

  void kurang() {
    print("Masukkan judul buku yang ingin dihapus:");
    String title = stdin.readLineSync() ?? "";
    
    _books.removeWhere((book) => book["title"] == title);
    print("Buku berhasil dihapus!\n");
  }

  void tampil() {
    if (_books.isEmpty) {
      print("Tidak ada buku dalam daftar.\n");
      return;
    }
    
    print("Daftar Buku:");
    for (var book in _books) {
      print("Title: ${book["title"]}, Author: ${book["Author"]}, Year: ${book["year"]}");
    }
    print("");
  }
}
