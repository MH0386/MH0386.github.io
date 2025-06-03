import 'dart:async';
import 'package:get/get.dart';

class TextController extends GetxController {
  var currentIndex = 0.obs;
  var socialMediaTitle = "Social Media".obs;
  List<String> welcomeTexts = ["Welcome to My Portfolio", "I am AI Engineer"];

  Timer? _timer;

  @override
  void onInit() {
    super.onInit();
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (currentIndex.value < welcomeTexts.length - 1) {
        currentIndex.value++;
      } else {
        currentIndex.value = 0;
      }
    });
  }

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }
}
