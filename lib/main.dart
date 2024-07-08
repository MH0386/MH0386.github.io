import 'package:mh0386/Pages/home.dart';
import 'package:mh0386/Pages/resume.dart';
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
        GetPage(name: '/Resume', page: () => const Resume()),
      ],
    ),
  );
}
