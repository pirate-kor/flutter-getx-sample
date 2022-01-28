import 'package:flutter/material.dart';
import 'package:flutter_getx_sample/sample/home.dart';
import 'package:flutter_getx_sample/sample/next_screen.dart';
import 'package:flutter_getx_sample/sample/unknown.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Getx test - Navigation",
      initialRoute: "/",
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: "/", page: () => MainApp()),
        GetPage(name: "/home", page: () => Home()),
        // 파라미터로 넘기는 법 (2)
        GetPage(name: "/nextScreen/:someValue", page: () => NextScreen(),
          transition: Transition.leftToRight),
      ],
      // 정의되지 않은 uri 입력할 경우
      unknownRoute: GetPage(name: "/notfound", page: () => UnknownScreen()),
      home: Scaffold(
        appBar: AppBar(title: Text("Navigation"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(child: Text("Go to Home"),
              onPressed: () {
//                Get.toNamed("/home",);
                // 파라미터로 넘기는 법 (1)
                Get.toNamed("/home?channel=sample&code=flutter",);
              },),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(child: Text("Next screen"),
                onPressed: () {
//                  Get.toNamed("/nextScreen",);
                  Get.toNamed("/x",);
                },),
            ],
          ),
        ),
      ),
    );
  }
}
