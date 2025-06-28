import 'package:flutter/material.dart';

class Style {
  static final Style _instance = Style._internal();

  factory Style() {
    return _instance;
  }

  Style._internal();

  // Global variables here
  ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: Colors.black,
  );
}
