import 'package:flutter/material.dart';
import 'package:flutter_getx_sample/sample/worker/worker_controller.dart';
import 'package:get/get.dart';

class Workers extends StatelessWidget {
  WorkerController workerController = Get.put(WorkerController());

  Workers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Getx test - workers",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Workers"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => workerController.increase(),
                  child: Text("Increase")),
              Padding(
                padding: EdgeInsets.all(16),
                child: TextField(
                  onChanged: (val) {
                    workerController.increase();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
