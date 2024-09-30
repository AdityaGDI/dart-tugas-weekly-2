import 'dart:io';
import 'ClassTemp.dart';
void main() {
  while (true) {
    stdout.writeln("Masukkan Suhu dalam Celsius:");
    double? celsius = double.parse(stdin.readLineSync() ?? "0");

    TemperatureConverter converter = TemperatureConverter(celsius);

    stdout.writeln("1. Reaumur");
    stdout.writeln("2. Fahrenheit");
    stdout.writeln("3. Kelvin");
    stdout.writeln("Input apapun untuk keluar dari aplikasi");

    int pilihan = int.parse(stdin.readLineSync() ?? "1");

    switch (pilihan) {
      case 1:
        double reaumur = converter.toReaumur();
        stdout.writeln("Suhumu dalam suhu reaumur itu ialah : $reaumur");
        break;
      case 2:
        double fahrenheit = converter.toFahrenheit();
        stdout.writeln("Suhumu dalam suhu fahrenheit itu ialah : $fahrenheit");
        break;
      case 3:
        double kelvin = converter.toKelvin();
        stdout.writeln("Suhumu dalam suhu kelvin itu ialah : $kelvin");
        break;
      default:
        stdout.writeln("Keluar dari aplikasi.");
        return;
    }
  }
}
