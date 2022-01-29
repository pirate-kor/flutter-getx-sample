import 'package:flutter/material.dart';
import 'package:flutter_getx_sample/sample/worker/worker_controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(),
    );
  }
}
