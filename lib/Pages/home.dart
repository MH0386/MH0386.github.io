import 'package:MH0386/Pages/resume.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/link.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mohamed Hisham Abdelzaher',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF000000)),
      home: Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: const Color(0xFF000000),
          child: IconButton.outlined(
            color: const Color(0xFF000000),
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {
              Get.bottomSheet(
                SingleChildScrollView(
                  child: Wrap(
                    children: [
                      Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse(
                            'MAILTO:mohamed.hisham.abdelzaher@gmail.com'),
                        builder: (context, followLink) => Card(
                          // onPressed: followLink,
                          child: ListTile(
                            onTap: followLink,
                            title: const Text('Email'),
                            leading: const FaIcon(FontAwesomeIcons.envelope),
                            subtitle: const Text(
                                'mohamed.hisham.abdelzaher@gmail.com'),
                          ),
                        ),
                      ),
                      Card(
                        // onPressed: followLink,
                        child: ListTile(
                          onTap: () => Get.to(() =>  Resume()),
                          title: const Text('Resume'),
                        ),
                      ),
                      Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse(
                            'https://www.facebook.com/Mohamed.Hisham.Abdelzaher'),
                        builder: (context, followLink) => Card(
                          // onPressed: followLink,
                          child: ListTile(
                            onTap: followLink,
                            title: const Text('Facebook'),
                            leading: const FaIcon(FontAwesomeIcons.facebook),
                          ),
                        ),
                      ),
                      Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse('https://www.Kaggle.com/MH0386'),
                        builder: (context, followLink) => Card(
                          // onPressed: followLink,
                          child: ListTile(
                            onTap: followLink,
                            title: const Text('Kaggle'),
                            leading: const FaIcon(FontAwesomeIcons.kaggle),
                          ),
                        ),
                      ),
                      Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse('https://www.GitHub.com/MH0386'),
                        builder: (context, followLink) => Card(
                          // onPressed: followLink,
                          child: ListTile(
                            onTap: followLink,
                            title: const Text('GitHub'),
                            leading: const FaIcon(FontAwesomeIcons.github),
                          ),
                        ),
                      ),
                      Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse('https://www.LinkedIn.com/in/MH0386'),
                        builder: (context, followLink) => Card(
                          // onPressed: followLink,
                          child: ListTile(
                            onTap: followLink,
                            title: const Text('LinkedIn'),
                            leading: const FaIcon(FontAwesomeIcons.linkedin),
                          ),
                        ),
                      ),
                      Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse('https://www.x.com/MH0386'),
                        builder: (context, followLink) => Card(
                          // onPressed: followLink,
                          child: ListTile(
                            onTap: followLink,
                            title: const Text('X'),
                            leading: const FaIcon(FontAwesomeIcons.xTwitter),
                          ),
                        ),
                      ),
                      Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse(
                            'https://www.Coursera.org/user/985b071f3a43961f7fc46f8061c7377e'),
                        builder: (context, followLink) => Card(
                          // onPressed: followLink,
                          child: ListTile(
                            onTap: followLink,
                            title: const Text('Coursera'),
                          ),
                        ),
                      ),
                      Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse(
                            'https://www.datacamp.com/profile/MH0386'),
                        builder: (context, followLink) => Card(
                          // onPressed: followLink,
                          child: ListTile(
                            onTap: followLink,
                            title: const Text('DataCamp'),
                          ),
                        ),
                      ),
                      Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse('https://www.huggingface.co/MH0386'),
                        builder: (context, followLink) => Card(
                          // onPressed: followLink,
                          child: ListTile(
                            onTap: followLink,
                            title: const Text('Hugging Face'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                isScrollControlled: true,
              );
            },
          ),
        ),
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
                      fontSize: (MediaQuery.of(context).size.width * 0.1 <
                              MediaQuery.of(context).size.height * 0.1)
                          ? MediaQuery.of(context).size.width * 0.1
                          : MediaQuery.of(context).size.height * 0.1,
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
                      fontSize: (MediaQuery.of(context).size.width * 0.04 <
                              MediaQuery.of(context).size.height * 0.04)
                          ? MediaQuery.of(context).size.width * 0.04
                          : MediaQuery.of(context).size.height * 0.04,
                      fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
                    ),
                    speed: const Duration(milliseconds: 100),
                  ),
                ],
                repeatForever: false,
                isRepeatingAnimation: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
