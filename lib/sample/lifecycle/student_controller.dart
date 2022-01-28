import 'package:get/get.dart';

class StudentController extends GetxController {
  var count = 0;

  void increase() async {
    await Future<int>.delayed(Duration(seconds: 2));
    this.count++;
    update();
  }

  void cleanupTask() {
    print("Clean up task");
  }

  @override
  void onInit() {
    print("Init called");
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}