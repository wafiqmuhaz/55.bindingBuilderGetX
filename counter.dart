import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/counC.dart';

class CounterPage extends StatelessWidget {
  CounterController counterC = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(() => GestureDetector(
                  onTap: () {
                    print(counterC.data);
                  },
                  child: Container(
                    child: Text(
                      "${counterC.data}",
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => counterC.decrement(),
                  child: Text("-"),
                ),
                ElevatedButton(
                  onPressed: () => counterC.increment(),
                  child: Text("+"),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.back(),
      ),
    );
  }
}
