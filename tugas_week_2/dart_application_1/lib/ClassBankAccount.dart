import 'dart:io';

class BankAccount {
  int _balance;

  BankAccount(this._balance);

  void deposit() {
    stdout.write('Berapa Jumlah yang ingin Anda Depositkan: ');
    int deposit = int.parse(stdin.readLineSync()!);

    if (deposit < 50000) {
      stdout.writeln("Jumlah deposit minimal adalah 50,000. Silakan coba lagi.");
    } else {
      _balance += deposit;
      stdout.writeln("Jumlah yang telah Anda Depositkan: $deposit, Saldo Anda sekarang: $_balance");
    }
  }


  bool withdraw() {
    stdout.write('Berapa Jumlah yang ingin Anda Tarik: ');
    int withdrawAmount = int.parse(stdin.readLineSync()!);

    if (withdrawAmount < 50000) {
      stdout.writeln("Jumlah penarikan minimal adalah 50,000. Silakan coba lagi.");
      return false;
    } else if (withdrawAmount > _balance) {
      stdout.writeln("Saldo tidak cukup untuk penarikan ini.");
      return false;
    } else {
      _balance -= withdrawAmount;
      stdout.writeln("Anda telah menarik: $withdrawAmount, Saldo Anda sekarang: $_balance");
      return true;
    }
  }

  void checkBalance() {
    stdout.writeln("Saldo Anda sekarang: $_balance");
  }
}

class SavingsAccount extends BankAccount {
  double interestRate; 

  SavingsAccount(int initialBalance, this.interestRate) : super(initialBalance);

  void applyInterest() {
    double interest = _balance * interestRate; 
    depositAmount(interest.toInt()); 
    stdout.writeln("Bunga yang diterapkan: 1%, Saldo Anda sekarang: $_balance");
  }

  void depositAmount(int amount) {
    super._balance += amount;
  }
}
