import 'package:mh0386/Pages/resume.dart';
import 'package:mh0386/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/link.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = Get.put(TextController());
    return MaterialApp(
      title: 'Mohamed Hisham Abdelzaher',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          actions: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
              ),
              onPressed: () => Get.defaultDialog(
                title: textController.socialMediaTitle.value,
                titlePadding: const EdgeInsets.all(10),
                content: Wrap(
                  direction: Axis.vertical,
                  children: [
                    const SizedBox(height: 10),
                    Link(
                      target: LinkTarget.blank,
                      uri: Uri.parse(
                        'https://www.facebook.com/Mohamed.Hisham.Abdelzaher',
                      ),
                      builder: (context, followLink) => ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.black,
                        ),
                        onPressed: followLink,
                        child: const Text(
                          'Facebook',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Link(
                      target: LinkTarget.blank,
                      uri: Uri.parse(
                        'https://www.Kaggle.com/MH0386',
                      ),
                      builder: (context, followLink) => ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.black,
                        ),
                        onPressed: followLink,
                        child: const Text(
                          'Kaggle',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Link(
                      target: LinkTarget.blank,
                      uri: Uri.parse(
                        'https://www.GitHub.com/MH0386',
                      ),
                      builder: (context, followLink) => ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.black,
                        ),
                        onPressed: followLink,
                        child: const Text(
                          'GitHub',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Link(
                      target: LinkTarget.blank,
                      uri: Uri.parse(
                        'https://www.LinkedIn.com/in/MH0386',
                      ),
                      builder: (context, followLink) => ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.black,
                        ),
                        onPressed: followLink,
                        child: const Text(
                          'LinkedIn',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Link(
                      target: LinkTarget.blank,
                      uri: Uri.parse(
                        'https://www.x.com/MH0386',
                      ),
                      builder: (context, followLink) => ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.black,
                        ),
                        onPressed: followLink,
                        child: const Text(
                          'X',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Link(
                      target: LinkTarget.blank,
                      uri: Uri.parse(
                        'https://www.Coursera.org/user/985b071f3a43961f7fc46f8061c7377e',
                      ),
                      builder: (context, followLink) => ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.black,
                        ),
                        onPressed: followLink,
                        child: const Text(
                          'Coursera',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Link(
                      target: LinkTarget.blank,
                      uri: Uri.parse(
                        'https://www.datacamp.com/profile/MH0386',
                      ),
                      builder: (context, followLink) => ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.black,
                        ),
                        onPressed: followLink,
                        child: const Text(
                          'DataCamp',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Link(
                      target: LinkTarget.blank,
                      uri: Uri.parse(
                        'https://www.huggingface.co/MH0386',
                      ),
                      builder: (context, followLink) => ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.black,
                        ),
                        onPressed: followLink,
                        child: const Text(
                          'Hugging Face',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
                actions: [
                  ElevatedButton(
                    onPressed: () => Get.back(),
                    child: Text(
                      'Close',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
                      ),
                    ),
                  ),
                ],
                backgroundColor: Colors.black,
                titleStyle: TextStyle(
                  color: Colors.white,
                  fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
                ),
              ),
              child: const Text('Social Media'),
            ),
            ElevatedButton(
              onPressed: () => Get.to(() => const Resume()),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
              ),
              child: const Text('Resume'),
            ),
            ElevatedButton(
              onPressed: () => Get.defaultDialog(
                title: 'Email',
                content: Text(
                  'mohamed.hisham.abdelzaher@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
                  ),
                ),
                actions: [
                  ElevatedButton(
                    onPressed: () => Get.back(),
                    child: Text(
                      'Close',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
                      ),
                    ),
                  ),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse(
                      'MAILTO:mohamed.hisham.abdelzaher@gmail.com',
                    ),
                    builder: (context, followLink) => ElevatedButton(
                      onPressed: followLink,
                      child: Text(
                        'Send Email',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
                        ),
                      ),
                    ),
                  ),
                ],
                backgroundColor: Colors.black,
                titleStyle: TextStyle(
                  color: Colors.white,
                  fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
                ),
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
              ),
              child: const Text('Email'),
            )
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Animate(
                // onPlay: (controller) => controller.repeat(),
                effects: const [
                  FadeEffect(
                    duration: Duration(seconds: 5),
                  ),
                ],
                child: Text(
                  'Mohamed Hisham Abdelzaher',
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
