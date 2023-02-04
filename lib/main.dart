import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/link.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mohamed Hisham Abdelzaher',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Mohamed Hisham Abdelzaher',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 70,
                    fontFamily: GoogleFonts.lobster().fontFamily),
              ),
              Text(
                'Undergraduate Student',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: GoogleFonts.lobster().fontFamily,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Link(
                  target: LinkTarget.blank,
                  uri: Uri.parse('MAILTO:mohammedhisham053@gmail.com'),
                  builder: (context, followLink) => OutlinedButton(
                        onPressed: followLink,
                        child: const Text(
                          'mohammedhisham053@gmail.com',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      )),
              const SizedBox(
                height: 20,
              ),
              Link(
                  target: LinkTarget.blank,
                  uri: Uri.parse('https://rxresu.me/mohammedhisham053/mh0386'),
                  builder: (context, followLink) => OutlinedButton(
                        onPressed: followLink,
                        child: const Text(
                          'My Resume',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      )),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Link(
                      target: LinkTarget.blank,
                      uri: Uri.parse('https://www.facebook.com/MH0386/'),
                      builder: (context, followLink) => OutlinedButton(
                            onPressed: followLink,
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                const CircleBorder(),
                              ),
                            ),
                            child: const Image(
                              image: AssetImage('images/Facebook.png'),
                              height: 50,
                            ),
                          )),
                  Link(
                      target: LinkTarget.blank,
                      uri: Uri.parse('https://www.GitHub.com/mh0386/'),
                      builder: (context, followLink) => OutlinedButton(
                            onPressed: followLink,
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                const CircleBorder(),
                              ),
                            ),
                            child: const Image(
                              image: AssetImage('images/GitHub.png'),
                              height: 50,
                            ),
                          )),
                  Link(
                      target: LinkTarget.blank,
                      uri: Uri.parse('https://www.Kaggle.com/mh0386/'),
                      builder: (context, followLink) => OutlinedButton(
                            onPressed: followLink,
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                const CircleBorder(),
                              ),
                            ),
                            child: const Image(
                              image: AssetImage('images/Kaggle.png'),
                              height: 50,
                            ),
                          )),
                  Link(
                      target: LinkTarget.blank,
                      uri: Uri.parse('https://www.LinkedIn.com/in/mh0386/'),
                      builder: (context, followLink) => OutlinedButton(
                            onPressed: followLink,
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                const CircleBorder(),
                              ),
                            ),
                            child: const Image(
                              image: AssetImage('images/LinkedIn.png'),
                              height: 50,
                            ),
                          )),
                  Link(
                      target: LinkTarget.blank,
                      uri: Uri.parse('https://www.Twitter.com/mh0386/'),
                      builder: (context, followLink) => OutlinedButton(
                            onPressed: followLink,
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                const CircleBorder(),
                              ),
                            ),
                            child: const Image(
                              image: AssetImage('images/Twitter.png'),
                              height: 50,
                            ),
                          )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
