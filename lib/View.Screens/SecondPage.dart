import 'package:code/Controolers/Counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  Counter_controller cc = Get.find<Counter_controller>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Second Page",
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Text(
                "${cc.c1.counter}",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.redAccent,
                ),
              );
            }),
            OutlinedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
