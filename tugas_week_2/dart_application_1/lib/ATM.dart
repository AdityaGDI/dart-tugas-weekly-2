import 'dart:io';
import 'ClassATM.dart';

void main() {
  stdout.writeln('Masukkan saldo awal:');
  double saldo = double.parse(stdin.readLineSync()!);

  ATM atm = ATM(saldo);

  while (true) {
    stdout.writeln('1. Deposit');
    stdout.writeln('2. Withdraw');
    stdout.writeln('3. Cek Saldo');
    stdout.writeln('4. Terapkan Bunga');
    stdout.writeln('5. Keluar');
    stdout.write('Pilih opsi (1/2/3/4/5): ');
    int pilihan = int.parse(stdin.readLineSync()!);

    switch (pilihan) {
      case 1:
        atm.depo();
        break;
      case 2:
        atm.withdraw();
        break;
      case 3:
        atm.check();
        break;
      case 4:
        atm.applyInterest(); 
        break;
      case 5:
        stdout.writeln("Anda logout. Terima kasih telah menggunakan layanan kami.");
        return;
      default:
        stdout.writeln("Pilihan tidak valid.");
    }
  }
}
