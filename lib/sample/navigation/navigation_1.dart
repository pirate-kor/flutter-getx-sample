import 'package:flutter/material.dart';
import 'package:flutter_getx_sample/sample/navigation/home.dart';
import 'package:get/get.dart';

class NavigationSample extends StatelessWidget {
  const NavigationSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "GetX test - Navigation",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigation"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text("Go to Home"),
                onPressed: () async {
//                  Get.to(
//                    Home(),
//
//                    // 풀스크린으로 설정할 경우, 뒤로가기 버튼이 아닌 X 버튼 출력
//                    fullscreenDialog: true,
//
//                    // 애니메이션 효과
//                    transition: Transition.zoom,
//                    duration: Duration(milliseconds: 2000),
////                  curve: Curves.bounceIn,
//                  );

                  // 이전 화면으로 return할 필요가 없을 경우
//                  Get.off(Home());

                  // 이전 화면에 대한 기록 모두 제거
//                  Get.offAll(Home());

                  // 다음 페이지로 갈 때 arguments 전달
//                  Get.to(Home(), arguments: "Data from main");

                  // 페이지 닫힐 때, return 값을 가져옴
                  var data = await Get.to(Home());
                  print("The received data is $data");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
