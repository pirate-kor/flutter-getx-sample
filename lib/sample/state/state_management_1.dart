import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StateManagement extends StatelessWidget {
  var count = 0.obs;

  void increase() {
    count++;
  }
  StateManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Getx test - state management",
      home: Scaffold(
        appBar: AppBar(
          title: Text("State Management"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                "Count value is $count",
                style: TextStyle(fontSize: 15),
              )),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: () {
                increase();
              }, child: Text("Increase"))
            ],
          ),
        ),
      ),
    );
  }
}
