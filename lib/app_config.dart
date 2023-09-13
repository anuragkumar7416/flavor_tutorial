
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class AppConfig {

  final String appName;
  final ThemeData themeData;
  final FirebaseOptions options;


  AppConfig({
    required this.appName,
    required this.themeData,
    required this.options
  });
}