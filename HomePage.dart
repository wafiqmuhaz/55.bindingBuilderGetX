import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../pages/counter.dart';
import '../controller/counC.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: ElevatedButton(

          /*TIDAK BSIA MEMILIKI BANYAK CONTROLLER */
          // onPressed: () => Get.to(() => CounterPage(),

          //     // BindingsBuilder( ()=> CounterController() ); //TIDAK DISARANKAN OLEH OWNER GETX
          //     // Get.toNamed("/Counter");
          //     binding: BindingsBuilder.put(() => CounterController())), 

          /*BISA MEMILIKI BANYAK CONTROLLER */
          onPressed: ()=> Get.toNamed("/Counter") , 


          child: Text("ke halaman counter >>"),
        ),
      ),
    );
  }
}
