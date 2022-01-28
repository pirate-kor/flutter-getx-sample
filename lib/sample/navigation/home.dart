import 'package:flutter/material.dart';
import 'package:flutter_getx_sample/sample/navigation/home.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Home screen",
              style: TextStyle(color: Colors.redAccent, fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Text(
                "Next screen",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                      (states) => Colors.blueAccent)),
              onPressed: () {
                Get.toNamed("/nextScreen/1234");
              },
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Text(
                "Back to Main",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.blueAccent)),
              onPressed: () {
//                Get.back();
                // 페이지 닫힐 때, return 값을 가져옴
                Get.back(result: "Data from Home screen");
              },
            ),
            SizedBox(
              height: 10,
            ),
//            Text(
//              // 다음 페이지로 갈 때 arguments 전달
//              "${Get.arguments}",
//              style: TextStyle(color: Colors.green, fontSize: 15),
//            ),

            // Getx에서 파라미터로 넘긴 값을 받는 것 (1)
            Text(
              "Channel name is ${Get.parameters['channel']} and code is ${Get.parameters['code']}",
              style: TextStyle(color: Colors.redAccent, fontSize: 10),
            )
          ],
        ),
      ),
    );
  }
}
