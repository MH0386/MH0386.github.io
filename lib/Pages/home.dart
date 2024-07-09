import 'package:mh0386/Pages/resume.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/link.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
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
              onPressed: () {
                Get.bottomSheet(
                  SingleChildScrollView(
                    child: Wrap(
                      children: [
                        Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse(
                            'https://www.facebook.com/Mohamed.Hisham.Abdelzaher',
                          ),
                          builder: (context, followLink) => Card(
                            child: ListTile(
                              onTap: followLink,
                              title: const Text('Facebook'),
                            ),
                          ),
                        ),
                        Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse(
                            'https://www.Kaggle.com/MH0386',
                          ),
                          builder: (context, followLink) => Card(
                            child: ListTile(
                              onTap: followLink,
                              title: const Text('Kaggle'),
                            ),
                          ),
                        ),
                        Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse(
                            'https://www.GitHub.com/MH0386',
                          ),
                          builder: (context, followLink) => Card(
                            child: ListTile(
                              onTap: followLink,
                              title: const Text('GitHub'),
                            ),
                          ),
                        ),
                        Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse(
                            'https://www.LinkedIn.com/in/MH0386',
                          ),
                          builder: (context, followLink) => Card(
                            child: ListTile(
                              onTap: followLink,
                              title: const Text('LinkedIn'),
                            ),
                          ),
                        ),
                        Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse(
                            'https://www.x.com/MH0386',
                          ),
                          builder: (context, followLink) => Card(
                            child: ListTile(
                              onTap: followLink,
                              title: const Text('X'),
                            ),
                          ),
                        ),
                        Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse(
                            'https://www.Coursera.org/user/985b071f3a43961f7fc46f8061c7377e',
                          ),
                          builder: (context, followLink) => Card(
                            child: ListTile(
                              onTap: followLink,
                              title: const Text('Coursera'),
                            ),
                          ),
                        ),
                        Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse(
                            'https://www.datacamp.com/profile/MH0386',
                          ),
                          builder: (context, followLink) => Card(
                            child: ListTile(
                              onTap: followLink,
                              title: const Text('DataCamp'),
                            ),
                          ),
                        ),
                        Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse(
                            'https://www.huggingface.co/MH0386',
                          ),
                          builder: (context, followLink) => Card(
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
              onPressed: () {
                Get.defaultDialog(
                  title: 'Email',
                  content: const Text(
                    'mohamed.hisham.abdelzaher@gmail.com',
                  ),
                  actions: [
                    ElevatedButton(
                      onPressed: () => Get.back(),
                      child: const Text('Close'),
                    ),
                    Link(
                      target: LinkTarget.blank,
                      uri: Uri.parse(
                        'MAILTO:mohamed.hisham.abdelzaher@gmail.com',
                      ),
                      builder: (context, followLink) => ElevatedButton(
                        onPressed: followLink,
                        child: const Text('Send Email'),
                      ),
                    ),
                  ],
                );
              },
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
                onPlay: (controller) => controller.repeat(),
                effects: const [
                  ShimmerEffect(
                    color: Colors.red,
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
              Animate(
                onPlay: (controller) => controller.repeat(),
                effects: const [
                  ShimmerEffect(
                    color: Colors.red,
                    duration: Duration(seconds: 5),
                  ),
                ],
                child: Text(
                  'I am an Undergraduate Student',
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
            ],
          ),
        ),
      ),
    );
  }
}
