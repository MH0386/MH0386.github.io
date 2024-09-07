import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mh0386/Pages/home.dart';
import 'package:mh0386/Pages/resume.dart';
import 'package:mh0386/controller.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(TextController());
  runApp(
    GetMaterialApp(
      title: 'Mohamed Hisham Abdelzaher',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const Home()),
        GetPage(name: '/resume', page: () => const Resume()),
      ],
    ),
  );
}
