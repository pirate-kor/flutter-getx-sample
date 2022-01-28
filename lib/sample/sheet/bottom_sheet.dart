import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetSample extends StatelessWidget {
  const BottomSheetSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "GetX test - Sheet & Theme",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bottom Sheet"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text("Botton sheet"),
                onPressed: () {
                  // 하단에 시트 설정 추가
                  Get.bottomSheet(
                    Container(
                      // 공간이 부족해지면 줄이나 행을 바꿔주도록 wrap 위젯 사용
                      child: Wrap(
                        children: [
                          ListTile(
                            leading: Icon(Icons.wb_sunny_outlined),
                            title: Text("Light theme"),
                            onTap: () {
                              Get.changeTheme(ThemeData.light());
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.wb_sunny),
                            title: Text("Dark theme"),
                            onTap: () {
                              Get.changeTheme(ThemeData.dark());
                            },
                          ),
                        ],
                      ),
                    ),
                    // 배경으로 덮을 기본 색상 설정
                    barrierColor: Colors.lightBlueAccent,

                    // bottom sheet의 백그라운드컬러 설정
                    backgroundColor: Colors.orangeAccent,

                    // bottom sheet 바깥에 클릭할때 사라지게 설정할지 여부
//                    isDismissible: false,

                    // bottom sheet 테두리 설정
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 2.0),
                    ),

                    // 드래그 설정 유무
                    enableDrag: false,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
