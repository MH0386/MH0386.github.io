import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pdfx/pdfx.dart';
import 'package:url_launcher/link.dart';
import 'package:internet_file/internet_file.dart';

class Resume extends StatelessWidget {
  const Resume({super.key});

  @override
  Widget build(BuildContext context) {
    final pdfPinchController = PdfControllerPinch(
      document: PdfDocument.openData(
        InternetFile.get(
          'https://raw.githubusercontent.com/MH0386/MH0386/main/resume.pdf',
        ),
      ),
      viewportFraction: 0.1,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: MediaQuery.of(context).size.width * 0.1),
              const Text('Resume'),
              SizedBox(width: MediaQuery.of(context).size.width * 0.1),
            ],
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Get.back(),
          ),
          actions: [
            Link(
              target: LinkTarget.blank,
              uri: Uri.parse('https://mh0386.github.io/resume.pdf'),
              builder: (context, followLink) => IconButton(
                icon: const FaIcon(FontAwesomeIcons.eye),
                onPressed: followLink,
              ),
            ),
            Link(
              target: LinkTarget.blank,
              uri: Uri.parse(
                'https://github.com/MH0386/MH0386/raw/main/resume.pdf',
              ),
              builder: (context, followLink) => IconButton(
                icon: const FaIcon(FontAwesomeIcons.download),
                onPressed: followLink,
              ),
            ),
          ],
        ),
        body: PdfViewPinch(controller: pdfPinchController),
      ),
    );
  }
}
