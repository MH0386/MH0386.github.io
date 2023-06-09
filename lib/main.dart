import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
  String  courseraLogo = """
  <svg xmlns="http://www.w3.org/2000/svg" width="1000" height="1000" viewBox="0 0 1000 1000" xml:space="preserve">
  <desc>Created with Fabric.js 3.5.0</desc>
  <rect x="0" y="0" fill="#ffffff"/>
  <g transform="matrix(41.6671 0 0 41.6893 502.4996 502.5001)" id="101169">
  <path style="stroke: none; stroke-width: 1; stroke-dasharray: none; stroke-linecap: butt; stroke-dashoffset: 0; stroke-linejoin: miter; stroke-miterlimit: 4; fill: rgb(255,255,255); fill-rule: nonzero; opacity: 1;" vector-effect="non-scaling-stroke" transform=" translate(-12.0001, -12.0009)" d="M 11.374 23.977 c -4.183 -0.21 -8.006 -2.626 -9.959 -6.347 c -2.097 -3.858 -1.871 -8.864 0.732 -12.454 C 4.748 1.338 9.497 -0.698 14.281 0.23 c 4.583 0.857 8.351 4.494 9.358 8.911 c 1.122 4.344 -0.423 9.173 -3.925 12.04 c -2.289 1.953 -5.295 2.956 -8.34 2.797 z m 7.705 -8.05 a 588.737 588.737 0 0 0 -3.171 -1.887 c -0.903 1.483 -2.885 2.248 -4.57 1.665 c -2.024 -0.639 -3.394 -2.987 -2.488 -5.134 c 0.801 -2.009 2.79 -2.707 4.357 -2.464 a 4.19 4.19 0 0 1 2.623 1.669 c 1.077 -0.631 2.128 -1.218 3.173 -1.855 c -2.03 -3.118 -6.151 -4.294 -9.656 -2.754 c -3.13 1.423 -4.89 4.68 -4.388 7.919 c 0.54 3.598 3.73 6.486 7.716 6.404 a 7.664 7.664 0 0 0 6.404 -3.563 z" stroke-linecap="round"/>
  </g>
  </svg>
  """;

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
                    onTap: followLink,
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
                uri: Uri.parse(
                    'https://rxresu.me/mohamed.hisham.abdelzaher/mh0386'),
                builder: (context, followLink) => OutlinedButton(
                  onPressed: followLink,
                  child: AnimatedTextKit(
                    onTap: followLink,
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
                      icon: const FaIcon(FontAwesomeIcons.linkedinIn),
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
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse('https://www.Coursera.org/user/985b071f3a43961f7fc46f8061c7377e'),
                    builder: (context, followLink) => IconButton(
                      color: Colors.white,
                      iconSize: (MediaQuery.of(context).size.width * 0.05 <
                              MediaQuery.of(context).size.height * 0.05)
                          ? MediaQuery.of(context).size.width * 0.05
                          : MediaQuery.of(context).size.height * 0.05,
                      hoverColor: Colors.blue.shade600,
                      icon: SvgPicture.string(courseraLogo),
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
