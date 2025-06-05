import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mh0386/connector.dart';
import 'package:mh0386/info.dart';
import 'package:mh0386/style.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  List<ElevatedButton> _buildContactButtons() {
    return Info().socialMediaLinks.map((link) {
      return ElevatedButton(
        onPressed: goToUrl(Uri.parse(link['url']!)),
        style: Style().buttonStyle,
        child: Text(
          link['name']!,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      );
    }).toList()..add(
      ElevatedButton(
        onPressed: goToUrl(Uri.parse('mailto:${Info().email}')),
        style: Style().buttonStyle,
        child: Text(
          Info().email,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
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
