import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt teamApoints = 0.obs;
  RxInt teamBpoints = 0.obs;

  void increment() {
    teamApoints++;
  }

  void decrement() {
    teamBpoints--;
  }
}
