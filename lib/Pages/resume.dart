import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:url_launcher/link.dart';

class Resume extends StatelessWidget {
  const Resume({super.key});

  @override
  Widget build(BuildContext context) {
    final pdfViewerController = PdfViewerController();
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
              IconButton(
                icon: const Icon(
                  Icons.zoom_in,
                  color: Colors.white,
                ),
                onPressed: () {
                  pdfViewerController.zoomLevel += 0.5;
                },
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              const Text('Resume'),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              IconButton(
                icon: const Icon(
                  Icons.zoom_out,
                  color: Colors.white,
                ),
                onPressed: () {
                  pdfViewerController.zoomLevel -= 0.5;
                },
              ),
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
              uri: Uri.parse(
                'https://mh0386.github.io/resume.pdf',
              ),
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
        floatingActionButton: FloatingActionButton(
          onPressed: () => pdfViewerController.zoomLevel = 1.5,
          child: const Icon(Icons.refresh),
        ),
        body: SfPdfViewer.network(
          'https://mh0386.github.io/resume.pdf',
          pageLayoutMode: PdfPageLayoutMode.single,
          initialZoomLevel: 1.5,
          controller: pdfViewerController,
        ),
      ),
    );
  }
}
