import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/link.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mohamed Hisham Abdelzaher',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF000000)),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Mohamed Hisham Abdelzaher',
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 60,
                      fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
                    ),
                    speed: const Duration(milliseconds: 100),
                  ),
                ],
                repeatForever: false,
                isRepeatingAnimation: false,
              ),
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Undergraduate Student',
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
                    ),
                    speed: const Duration(milliseconds: 100),
                  ),
                ],
                repeatForever: false,
                isRepeatingAnimation: false,
              ),
              const SizedBox(
                height: 20,
              ),
              Link(
                target: LinkTarget.blank,
                uri: Uri.parse('MAILTO:mohamed.hisham.abdelzaher@gmail.com'),
                builder: (context, followLink) => OutlinedButton(
                  onPressed: followLink,
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'mohamed.hisham.abdelzaher@gmail.com',
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
                        ),
                        speed: const Duration(milliseconds: 100),
                      ),
                    ],
                    repeatForever: false,
                    isRepeatingAnimation: false,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Link(
                target: LinkTarget.blank,
                uri: Uri.parse('https://rxresu.me/mohamed.hisham.abdelzaher/mh0386'),
                builder: (context, followLink) => OutlinedButton(
                  onPressed: followLink,
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'My Resume',
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
                        ),
                        speed: const Duration(milliseconds: 200),
                      ),
                    ],
                    repeatForever: false,
                    isRepeatingAnimation: false,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse('https://www.facebook.com/MH0386'),
                    builder: (context, followLink) => IconButton(
                      color: Colors.white,
                      iconSize: (MediaQuery.of(context).size.width * 0.05 <
                              MediaQuery.of(context).size.height * 0.05)
                          ? MediaQuery.of(context).size.width * 0.05
                          : MediaQuery.of(context).size.height * 0.05,
                      hoverColor: Colors.blue.shade700,
                      icon: const FaIcon(FontAwesomeIcons.facebook),
                      onPressed: followLink,
                    ),
                  ),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse('https://www.Kaggle.com/MH0386'),
                    builder: (context, followLink) => IconButton(
                      color: Colors.white,
                      iconSize: (MediaQuery.of(context).size.width * 0.05 <
                              MediaQuery.of(context).size.height * 0.05)
                          ? MediaQuery.of(context).size.width * 0.05
                          : MediaQuery.of(context).size.height * 0.05,
                      hoverColor: Colors.blue,
                      icon: const FaIcon(FontAwesomeIcons.kaggle),
                      onPressed: followLink,
                    ),
                  ),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse('https://www.GitHub.com/MH0386'),
                    builder: (context, followLink) => IconButton(
                      color: Colors.white,
                      iconSize: (MediaQuery.of(context).size.width * 0.05 <
                              MediaQuery.of(context).size.height * 0.05)
                          ? MediaQuery.of(context).size.width * 0.05
                          : MediaQuery.of(context).size.height * 0.05,
                      hoverColor: Colors.white10,
                      icon: const FaIcon(FontAwesomeIcons.github),
                      onPressed: followLink,
                    ),
                  ),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse('https://www.LinkedIn.com/in/MH0386'),
                    builder: (context, followLink) => IconButton(
                      color: Colors.white,
                      iconSize: (MediaQuery.of(context).size.width * 0.05 <
                              MediaQuery.of(context).size.height * 0.05)
                          ? MediaQuery.of(context).size.width * 0.05
                          : MediaQuery.of(context).size.height * 0.05,
                      hoverColor: Colors.blue.shade800,
                      icon: const FaIcon(FontAwesomeIcons.linkedin),
                      onPressed: followLink,
                    ),
                  ),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse('https://www.Twitter.com/MH0386'),
                    builder: (context, followLink) => IconButton(
                      color: Colors.white,
                      iconSize: (MediaQuery.of(context).size.width * 0.05 <
                              MediaQuery.of(context).size.height * 0.05)
                          ? MediaQuery.of(context).size.width * 0.05
                          : MediaQuery.of(context).size.height * 0.05,
                      hoverColor: Colors.blue,
                      icon: const FaIcon(FontAwesomeIcons.twitter),
                      onPressed: followLink,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
