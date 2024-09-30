import 'dart:io';
import 'ClassAnimal.dart'; 

void main() {
  while (true) {
    stdout.writeln("Masukkan jenis hewan ('dog' atau 'cat') atau ketik apapun untuk keluar:");
    String? input = stdin.readLineSync()?.toLowerCase();

    if (input == "dog") {
      Animal myDog = Dog();
      stdout.writeln("Dog sound: ${myDog.sound()}");
      stdout.writeln("Dog action: ${myDog.eat()}");
    } else if (input == "cat") {
      Animal myCat = Cat();
      stdout.writeln("Cat sound: ${myCat.sound()}");
      stdout.writeln("Cat action: ${myCat.eat()}");
    } else {
      stdout.writeln("Keluar dari aplikasi.");
      break;
    }
  }
}
