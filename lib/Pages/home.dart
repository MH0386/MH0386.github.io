import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mh0386/Pages/resume.dart';
import 'package:mh0386/controller.dart';
import 'package:mh0386/info.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  List<ElevatedButton> _buildSocialMediaLink() {
    return Info().socialMediaLinks.map((link) {
      return ElevatedButton(
        onPressed: () => launchUrl(Uri.parse(link['url']!)),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
        ),
        child: Text(
          link['name']!,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      );
    }).toList();
  }

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
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
              ),
              onPressed: () => Get.defaultDialog(
                title: textController.socialMediaTitle.value,
                titlePadding: const EdgeInsets.all(10),
                content: Column(spacing: 20, children: _buildSocialMediaLink()),
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
                  'Mohamed Hisham Abdelzaher',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize:
                        (MediaQuery.of(context).size.width * 0.1 <
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
                    textController.welcomeTexts[textController
                        .currentIndex
                        .value],
                    key: ValueKey<int>(textController.currentIndex.value),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize:
                          (MediaQuery.of(context).size.width * 0.04 <
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
