import 'package:flutter/material.dart';
import 'package:flutter_getx_sample/sample/unique/unique_controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  WorkerController workerController = Get.put(WorkerController());

  MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Getx test - workers",
      home: Scaffold(
        appBar: AppBar(title: Text("Workers"),),
        body: Center(
          child: Column(
            
          ),
        ),
      ),
    )
  }
}
