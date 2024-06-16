import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Resume extends StatelessWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfPdfViewer.network(
        'https://github.com/MH0386/MH0386/blob/main/resume.pdf',
      ),
    );
  }
}
