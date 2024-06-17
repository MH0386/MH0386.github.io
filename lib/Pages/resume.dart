import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Resume extends StatelessWidget {
  const Resume({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF000000)),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Resume'),
        ),
        body: SfPdfViewer.network(
          'https://github.com/MH0386/MH0386/blob/main/resume.pdf',
        ),
      ),
    );
  }
}
