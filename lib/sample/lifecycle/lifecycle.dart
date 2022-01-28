import 'package:flutter/material.dart';
import 'package:flutter_getx_sample/sample/lifecycle/student_controller.dart';
import 'package:get/get.dart';

class Lifecycle extends StatelessWidget {
  StudentController studentController = Get.put(StudentController());

  Lifecycle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Getx test - lifecycle",
      home: Scaffold(
        appBar: AppBar(title: Text("Controller lifecycle"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<StudentController>(
//                initState: (data) => studentController.increase(),
//                dispose: (_) => studentController.cleanupTask(),
                  builder: (controller) {
                    return Text(
                      "The value is ${controller.count}",
                      style: TextStyle(fontSize: 15),
                    );
                  }
              )
            ],
          ),
        ),
      ),
    );
  }
}
