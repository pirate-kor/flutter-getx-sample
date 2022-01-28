import 'package:flutter/material.dart';
import 'package:flutter_getx_sample/sample/state/student_controller.dart';
import 'package:get/get.dart';

class StateManagement3 extends StatelessWidget {
  StudentController studentController = Get.put(StudentController());

  StateManagement3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      title: "Getx test - state management",
      home: Scaffold(
        appBar: AppBar(
          title: Text("State management"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                // case 1.
//                    "Name is ${studentController.student.name}",

                // case 2.
                "Name is ${studentController.student.value.name}",
                style: TextStyle(fontSize: 15),
              )),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  child: Text("Upper"),
                  onPressed: () {
                    studentController.convertToUpperCase();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
