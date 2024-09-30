
import 'dart:io';

 class ATM {
  double _saldo;

  ATM(this._saldo);

  void depo() {
    stdout.write('Masukkan jumlah yang ingin dideposit: ');
    int depo = int.parse(stdin.readLineSync()!);
    if (depo >= 50000) {
      _saldo += depo;
      stdout.writeln("Anda mendepo $depo, saldo anda sekarang $_saldo");
    } else {
      stdout.writeln("Error: Jumlah deposit tidak valid.");
    }
  }

  void withdraw() {
    stdout.write('Masukkan jumlah yang ingin ditarik: ');
    int withdraw = int.parse(stdin.readLineSync()!);
    if (withdraw <= 49999) {
      stdout.writeln("Error: Penarikan kurang dari 50K.");
    } else if (withdraw > _saldo) {
      stdout.writeln("Error: Saldo tidak cukup untuk ditarik.");
    } else {
      _saldo -= withdraw; 
      stdout.writeln("Jumlah penarikan anda $withdraw, saldo anda sekarang $_saldo.");
    }
  }

  void check() {
    stdout.writeln("Saldo anda $_saldo");
  }

  void applyInterest() {
    double interestRate = 0.01; 
    _saldo += _saldo * interestRate;
    stdout.writeln("Bunga 1% telah diterapkan, saldo anda sekarang $_saldo.");
  }
}