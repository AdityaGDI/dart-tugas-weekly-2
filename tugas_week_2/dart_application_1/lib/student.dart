import 'dart:io';
import 'ClassStudent.dart';
void main(){
  stdout.write(' Write The Name The Student : ');
  String Name = stdin.readLineSync()!;
  
  stdout.write(' What The ID StudentID? PLEASE Write it : ');
  String StudentID = stdin.readLineSync()!;
  
  stdout.write('Howmuch the grade of your Student? : ');
  int Grade = int.parse(stdin.readLineSync()!);

  Student student = Student(Name, StudentID, Grade);

  bool passed = student.Grade >= 70;

  if (passed) {
    
    stdout.writeln("Name = $Name");
    stdout.writeln("SID = $StudentID");
    stdout.writeln("Grade = $Grade");
    stdout.writeln("Your Student Passed");
    
  } else {
    
    stdout.writeln("Name = $Name");
    stdout.writeln("SID = $StudentID");
    stdout.writeln("Grade = $Grade");
    stdout.writeln("Your Student Gagal");
  }

}