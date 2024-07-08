import 'package:mh0386/Pages/resume.dart';
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
                              leading: const FaIcon(FontAwesomeIcons.facebook),
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
                              leading: const FaIcon(FontAwesomeIcons.kaggle),
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
                              leading: const FaIcon(FontAwesomeIcons.github),
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
                              leading:
                                  const FaIcon(FontAwesomeIcons.linkedinIn),
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
                              leading: const FaIcon(FontAwesomeIcons.xTwitter),
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
                              leading: Image.network(
                                'https://play-lh.googleusercontent.com/qq5__wITsoCx2kUK8TqVW2-8UDRuxET9kCzPzAPHad8umXiHRF2N0tZKuLezd0tiBQg=w480-h960-rw',
                                height: 30,
                              ),
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
                              leading: Image.network(
                                'https://play-lh.googleusercontent.com/zIO-uuTBjFigUIswv_h9S0-wVIkno_obwannvzr7NrXbh_MXL_khqV7gEqBly6KXEi4=w480-h960-rw',
                                height: 30,
                              ),
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
                              leading: Image.network(
                                'https://cdn-lfs.huggingface.co/repos/96/a2/96a2c8468c1546e660ac2609e49404b8588fcf5a748761fa72c154b2836b4c83/9cf16f4f32604eaf76dabbdf47701eea5a768ebcc7296acc1d1758181f71db73?response-content-disposition=inline%3B+filename*%3DUTF-8%27%27hf-logo.png%3B+filename%3D%22hf-logo.png%22%3B&response-content-type=image%2Fpng&Expires=1720705472&Policy=eyJTdGF0ZW1lbnQiOlt7IkNvbmRpdGlvbiI6eyJEYXRlTGVzc1RoYW4iOnsiQVdTOkVwb2NoVGltZSI6MTcyMDcwNTQ3Mn19LCJSZXNvdXJjZSI6Imh0dHBzOi8vY2RuLWxmcy5odWdnaW5nZmFjZS5jby9yZXBvcy85Ni9hMi85NmEyYzg0NjhjMTU0NmU2NjBhYzI2MDllNDk0MDRiODU4OGZjZjVhNzQ4NzYxZmE3MmMxNTRiMjgzNmI0YzgzLzljZjE2ZjRmMzI2MDRlYWY3NmRhYmJkZjQ3NzAxZWVhNWE3NjhlYmNjNzI5NmFjYzFkMTc1ODE4MWY3MWRiNzM%7EcmVzcG9uc2UtY29udGVudC1kaXNwb3NpdGlvbj0qJnJlc3BvbnNlLWNvbnRlbnQtdHlwZT0qIn1dfQ__&Signature=RQlGxsEJ3CiYnIiqpbx%7ELNAOB08G7etS8x6cC5Hjj1Fq3hNzv3jnFdnK5KbK9W%7EfEdHu1lTk69Yr3suLy6nM1hvRecMk9FCchkmNgiU-sN1FR2IPdRU4dF8hi2FiZ7AR9UE5EHrVCHLYaIjGfSkwIt71GYogguKyO7-E2ITwEfhodO4mQrx5uv92bMUYbt-p2TDOsBY%7ExxInx1JBT4l21NtR-JoMEjaVIaaIDih%7E9HpY52jJveJfdj219nppCVjtfVdCI-z1i02TCAttLHNimIJ4W8s8UWCGIzKFOVykDpfwqH3QqqilHaIaNpRxoB2Ky1Tggc2X-jpfLyQqjFIDZQ__&Key-Pair-Id=K3ESJI6DHPFC7',
                                height: 30,
                              ),
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
