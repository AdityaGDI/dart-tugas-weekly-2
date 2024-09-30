
import 'dart:io';

class Vehicle {
  String? name; 
  int? speed;

  Vehicle(this.name, this.speed);

  void move() {
    stdout.write("The Vehicle is moving! ");
  } 
}

class Car extends Vehicle {
  Car(String? name, int? speed) : super(name, speed);

  @override
  void move() {
    String kecepatan = L_Kecepatan(speed);
    stdout.write("The car is moving! The speed is $speed km/h and it is $kecepatan.\n");
  }
}

class Bike extends Vehicle {
  Bike(String? name, int? speed) : super(name, speed);

  @override
  void move() {
    String kecepatan = L_Kecepatan(speed);
    stdout.write("The bike is moving! The speed is $speed km/h and it is $kecepatan.\n");
  }
}

String L_Kecepatan(int? speed) {
  if (speed == null) return "unknown speed";
  if (speed < 30) return "slow";
  if (speed <= 60) return "normal";
  return "fast";
}
