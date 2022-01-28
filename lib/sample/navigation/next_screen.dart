import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child:
//        Text(
//          "This is next screen",
//          style: TextStyle(color: Colors.redAccent, fontSize: 20),
//        ),
              Text(
          "${Get.parameters['someValue']}",
          style: TextStyle(color: Colors.redAccent, fontSize: 10),
        )
      ),
    );
  }
}
