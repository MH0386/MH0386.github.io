import 'package:get/get.dart';
import 'dart:async';

class TextController extends GetxController {
  var currentIndex = 0.obs;
  var socialMediaTitle = "Social Media".obs;
  List<String> welcomeTexts = [
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
        if (currentIndex.value < welcomeTexts.length - 1) {
          currentIndex.value++;
        } else {
          currentIndex.value = 0;
        }
      },
    );
  }
}
