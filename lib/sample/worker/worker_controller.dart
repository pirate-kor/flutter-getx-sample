import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkerController extends GetxController {
  var count = 0.obs;
  void increase() {
    count++;
  }

  @override
  void onInit() {
    // 값이 변할때마다 실행
//    ever(count, (_) => print(count));
//    everAll([count], (_) => print(count));

    // 값이 변할때 한 번만 실행
//    once(count, (_) => print(count));

    // 타이핑이 멈췄을때(delay 만큼의 시간 `이후`) 출력
//    debounce(count, (_) => print("stopped"), time: Duration(seconds: 1));

    // 타이핑하고 있을때, delay 시간 기준으로 출력
    interval(count, (_) => print("dd"), time: Duration(seconds: 1));

    super.onInit();
  }
}
