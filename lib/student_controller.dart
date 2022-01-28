import 'package:flutter_getx_sample/student.dart';
import 'package:get/get.dart';

class StudentController extends GetxController {
  // case 1.
//  var student = Student();
//  void convertToUpperCase() {
//    student.name.value = student.name.value.toUpperCase();
//  }

  // case 2.
  var student = Student(name: "Andrew", age: 25).obs;
  void convertToUpperCase() {
    student.update((student) {
      student!.name = student.name.toString().toUpperCase();
    });
  }
}