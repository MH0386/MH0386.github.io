import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pdfrx/pdfrx.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class Resume extends StatelessWidget {
  const Resume({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // …other Scaffold properties like appBar, body, etc.
    );
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title: const Text('Resume'),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Get.back(),
          ),
          actions: [
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
        body: PdfViewer.uri(
          Uri.parse(
            'https://raw.githubusercontent.com/MH0386/MH0386/main/resume.pdf',
          ),
          params: PdfViewerParams(
            backgroundColor: Colors.black,
            enableTextSelection: true,
            enableKeyboardNavigation: true,
            linkHandlerParams: PdfLinkHandlerParams(
              onLinkTap: (link) async {
                if (link.url != null) {
                  try {
                    await launchUrl(link.url!);
                  } catch (e) {
                    // Handle error - could show a snackbar or dialog
                    debugPrint('Failed to launch URL: $e');
                  }
                }
              },
            ),
          ),
        ),
      ),
    )
  }
}
