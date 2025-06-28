import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mh0386/info.dart';
import 'package:mh0386/style.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  List<ElevatedButton> _buildContactButtons() {
    return Info().socialMediaLinks.map((link) {
      return ElevatedButton(
        style: Style().buttonStyle,
        onPressed: () =>
            launchUrl(link['url'] as Uri, mode: LaunchMode.externalApplication),
        child: Text(
          link['name']!,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text('Contact'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _buildContactButtons(),
        ),
      ),
    );
  }
}
