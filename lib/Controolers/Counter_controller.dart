import 'package:code/Models/Counter_Model.dart';
import 'package:get/get.dart';

class Counter_controller extends GetxController {
  Counter_Model c1 = Counter_Model(counter: 0.obs);

  void increment() {
    c1.counter++;
  }

  void decrement() {
    if (c1.counter > 0) {
      c1.counter--;
    }
  }
}