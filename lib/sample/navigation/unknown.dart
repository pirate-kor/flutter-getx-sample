import 'package:flutter/material.dart';
import 'package:flutter_getx_sample/sample/navigation/home.dart';
import 'package:get/get.dart';

class UnknownScreen extends StatelessWidget {
  const UnknownScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Unknown screen"),
      ),
      body: Center(
        child: Text(
          "Unknown screen",
          style: TextStyle(color: Colors.amber, fontSize: 20),
        ),
      ),
    );
  }
}
