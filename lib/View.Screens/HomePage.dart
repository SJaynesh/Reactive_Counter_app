import 'package:code/Controolers/Counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Counter_controller cc = Get.put(Counter_controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page",
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "hero1",
            onPressed: () {
              cc.increment();
            },
            child: Icon(Icons.add),
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            heroTag: "hero2",
            onPressed: () {
              cc.decrement();
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Obx(
              () {
                return Text(
                  "${cc.c1.counter}",
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
            OutlinedButton(
              onPressed: () {
                Get.toNamed("/SecondPage");
              },
              child: Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}
