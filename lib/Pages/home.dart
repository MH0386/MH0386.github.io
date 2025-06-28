import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mh0386/Pages/contact.dart';
import 'package:mh0386/Pages/resume.dart';
import 'package:mh0386/controller.dart';
import 'package:mh0386/info.dart';
import 'package:mh0386/style.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = Get.find<TextController>();
    return MaterialApp(
      title: Info().name,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          actions: [
            ElevatedButton(
              onPressed: () => Get.to(() => const Contact()),
              style: Style().buttonStyle,
              child: const Text('Contact'),
            ),
            ElevatedButton(
              onPressed: () => Get.to(() => const Resume()),
              style: Style().buttonStyle,
              child: const Text('Resume'),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Animate(
                // onPlay: (controller) => controller.repeat(),
                effects: const [FadeEffect(duration: Duration(seconds: 5))],
                child: Text(
                  Info().name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: (MediaQuery.of(context).size.width * 0.1 <
                            MediaQuery.of(context).size.height * 0.1)
                        ? MediaQuery.of(context).size.width * 0.1
                        : MediaQuery.of(context).size.height * 0.1,
                    fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
                  ),
                ),
              ),
              Obx(
                () => Animate(
                  effects: const [
                    FadeEffect(
                      delay: Duration(seconds: 1),
                      duration: Duration(seconds: 3),
                    ),
                  ],
                  child: Text(
                    textController
                        .welcomeTexts[textController.currentIndex.value],
                    key: ValueKey<int>(textController.currentIndex.value),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: (MediaQuery.of(context).size.width * 0.04 <
                              MediaQuery.of(context).size.height * 0.04)
                          ? MediaQuery.of(context).size.width * 0.04
                          : MediaQuery.of(context).size.height * 0.04,
                      fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
