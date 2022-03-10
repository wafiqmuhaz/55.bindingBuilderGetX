import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/counC.dart';
import 'pages/counter.dart';
import 'pages/HomePage.dart';

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  const app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
      getPages: [
        GetPage(
          name: "/home",
          page: () => HomePage(),
        ),
        GetPage(
          name: "/Counter",
          page: () => CounterPage(),
          bindings: [
            BindingsBuilder.put(() => CounterController()),
            
          ],
        ), 
      ],
    );
  }
}
