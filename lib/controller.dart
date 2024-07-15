import 'package:get/get.dart';
import 'dart:async';

class TextController extends GetxController {
  var currentIndex = 0.obs;
  List<String> texts = [
    "Welcome to My Portfolio",
    "I am an Undergraduate Student",
    "I love coding",
  ];

  @override
  void onInit() {
    super.onInit();
    Timer.periodic(
      const Duration(seconds: 5),
      (timer) {
        if (currentIndex.value < texts.length - 1) {
          currentIndex.value++;
        } else {
          currentIndex.value = 0;
        }
      },
    );
  }
}
