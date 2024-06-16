import 'package:MH0386.github.io/Pages/home.dart';
import 'package:MH0386.github.io/Pages/resume.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
