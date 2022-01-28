import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackbarSample extends StatelessWidget {
  const SnackbarSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "GetX test - snackber",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Snackbar"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  child: Text("Show snackbar"),
                  onPressed: () {
                    Get.snackbar(
                        "Snackbar Title", // title
                        "Snackbar Message", // message
                        snackPosition: SnackPosition.BOTTOM,
                        // snackbar 위치

                        // title 디자인 입히기 (override)
//                        titleText: Text("Another Title"),
//                        messageText: Text(
//                          "Another Message",
//                          style: TextStyle(color: Colors.redAccent),
//                        ),

                        // 기본 title, message에 색상 입히기
                        colorText: Colors.red,
                        backgroundColor: Colors.lightBlueAccent,
                        borderRadius: 30,
                        margin: EdgeInsets.all(10),
//                        maxWidth: 100,
//                        backgroundGradient:
//                            LinearGradient(colors: [Colors.red, Colors.yellow]),

                        // border 색상 및 굵기
                        borderColor: Colors.green,
                        borderWidth: 4,

                        // 그림자 설정
                        boxShadows: [
                          BoxShadow(
                              color: Colors.yellow,
                              offset: Offset(30, 50),
                              spreadRadius: 20,
                              blurRadius: 8),
                        ],

                        // 임의로 snackbar 제거 설정
                        isDismissible: true,
                        dismissDirection: DismissDirection.horizontal,

                        // snackbar 실행시 바운드 설정
                        forwardAnimationCurve: Curves.bounceInOut,

                        // 노출시간
                        duration: Duration(milliseconds: 8000),

                        // 아이콘 관련 설정
                        icon: Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                        shouldIconPulse: false,

                        // 좌측 인디케이터 색상 추가
//                        leftBarIndicatorColor: Colors.blueAccent,

                        // 우측 textButton 추가
                        mainButton: TextButton(
                          onPressed: () {},
                          child: Text("Retry"),
                        ),

                        // snackbar 버튼 클릭시 동작
                        onTap: (val) {
                          print("Snackbar clicked");
                        },

                        // 백그라운트 블러 처리
//                      overlayBlur: 5,
//                      overlayColor: Colors.grey,
                        // padding 설정 추가
//                      padding: EdgeInsets.all(50),

                        // 인디케이터 추가
                        showProgressIndicator: true,
                        progressIndicatorBackgroundColor: Colors.redAccent,
                        progressIndicatorValueColor:
                        AlwaysStoppedAnimation<Color>(Colors.orangeAccent),
                        reverseAnimationCurve: Curves.bounceInOut,
                        snackbarStatus: (val) {
                          print(val);
                        },
                        userInputForm: Form(
                          child: Row(
                            children: [Expanded(child: TextField())],
                          ),
                        ));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
