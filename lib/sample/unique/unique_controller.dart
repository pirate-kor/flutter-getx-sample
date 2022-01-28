import 'package:get/get.dart';

class UniqueController extends GetxController {
  var count = 0;

  void increase() {
    count++;
    // 특정 id를 지정해서 update 가능
    update(['txtCount']);
  }
}
