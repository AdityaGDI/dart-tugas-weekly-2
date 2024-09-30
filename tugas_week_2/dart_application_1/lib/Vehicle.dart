import 'dart:io';
import 'ClassVehicle.dart';

void main() {
  while (true) {
    stdout.writeln("What is your vehicle?");
    stdout.write("Enter 'Car' or 'Bike': ");
    String? jawaban = stdin.readLineSync();

    if (jawaban == null || (jawaban.toLowerCase() != "car" && jawaban.toLowerCase() != "bike")) {
      print("Invalid input. Please enter 'Car' or 'Bike'.");
      continue;
    }

    stdout.write("Enter the brand of your vehicle: ");
    String? name = stdin.readLineSync();

    stdout.write("Enter the speed you want (in km/h): ");
    String? speedInput = stdin.readLineSync();
    int? speed = int.tryParse(speedInput ?? "");

    if (speed == null) {
      print("Invalid speed input. Please enter a valid number.");
      continue;
    }

    Vehicle vehicle;

    switch (jawaban.toLowerCase()) {
      case "car":
        vehicle = Car(name, speed);
        break;
      case "bike":
        vehicle = Bike(name, speed);
        break;
      default:
        print("Invalid vehicle type.");
        continue; 
    }

    vehicle.move();
  }
}
