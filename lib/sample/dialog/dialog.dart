import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogSample extends StatelessWidget {
  const DialogSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "GetX test - dialog",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dialog"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  child: Text("Show dialog"),
                  onPressed: () {
//                    Get.defaultDialog();
                    Get.defaultDialog(
                      title: "Dialog Title",
                      titleStyle: TextStyle(fontSize: 25),
                      middleText: "Middle text",
                      middleTextStyle: TextStyle(fontSize: 20),
                      backgroundColor: Colors.blueAccent,
                      radius: 80,

                      // middleText 커스터마이징
                      content: Row(
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(child: Text("Data loading")),
                        ],
                      ),

                      // button 설정 추가 (기본형)
                      textCancel: "취소",
                      cancelTextColor: Colors.grey,
                      textConfirm: "확인",
                      confirmTextColor: Colors.black,
                      onCancel: () {},
                      onConfirm: () {},
                      buttonColor: Colors.lightBlueAccent,

                      // button 커스터마이징
                      cancel: Text(
                        "취소",
                        style: TextStyle(color: Colors.white),
                      ),
                      confirm: Text(
                        "확인",
                        style: TextStyle(color: Colors.white),
                      ),

                      // button 커스터마이징 (2)
                      actions: [
                        ElevatedButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: Text("액션_1")),
                        ElevatedButton(onPressed: () {}, child: Text("액션_2"))
                      ],

                      // 다이얼로그 바깥에 클릭할때 사라지게 설정할지 여부
                      barrierDismissible: false,
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
