import 'dart:io';
import 'ClassBankAccount.dart';

void main() {
  stdout.write('Masukkan saldo awal: ');
  int saldo = int.parse(stdin.readLineSync()!);

  double interestRate = 0.01; 
  SavingsAccount savingsAccount = SavingsAccount(saldo, interestRate);

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
        savingsAccount.deposit();
        break;
      case 2:
        savingsAccount.withdraw();
        break;
      case 3:
        savingsAccount.checkBalance();
        break;
      case 4:
        savingsAccount.applyInterest(); 
        break;
      case 5:
        stdout.writeln("Anda logout. Terima kasih telah menggunakan layanan kami.");
        return;
      default:
        stdout.writeln("Pilihan tidak valid.");
    }
  }
}
