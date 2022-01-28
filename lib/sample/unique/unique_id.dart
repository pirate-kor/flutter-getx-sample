import 'package:flutter/material.dart';
import 'package:flutter_getx_sample/sample/unique/unique_controller.dart';
import 'package:get/get.dart';

class UniqueIdSample extends StatelessWidget {
  UniqueController uniqueController = Get.put(UniqueController());

  UniqueIdSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Getx test - unique id",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Unique ID"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<UniqueController>(
                id: 'txtCount',
                builder: (controller) {
                  return Text(
                    "The value is ${controller.count}",
                    style: TextStyle(fontSize: 15),
                  );
                },
              ),
              GetBuilder<UniqueController>(builder: (controller) {
                return Text(
                  "The value is ${controller.count}",
                  style: TextStyle(fontSize: 15),
                );
              }),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () => uniqueController.increase(),
                  child: Text("Increase"))
            ],
          ),
        ),
      ),
    );
  }
}
