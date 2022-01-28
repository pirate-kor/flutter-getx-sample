import 'package:flutter/material.dart';
import 'package:flutter_getx_sample/sample/state/student.dart';
import 'package:get/get.dart';

class StateManagement2 extends StatelessWidget {
  // case 1.
//  var student = Student();

  // case 2.
  final student = Student(name: "Andrew", age: 25).obs;

  StateManagement2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Getx test - state management",
      home: Scaffold(
        appBar: AppBar(
          title: Text("State Management"),
        ),
        body: Center(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Obx(() => Text(
                  // case 1.
//                      "Name is ${student.name.value}",

                  // case 2.
                  "Name is ${student.value.name}",
                  style: TextStyle(fontSize: 15),
                )),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      // case 1.
//                      student.name.value = student.name.value.toUpperCase();

                      // case 2.
                      student.update((student) {
                        student!.name = student.name.toString().toUpperCase();
                      });
                    },
                    child: Text("Upper"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
