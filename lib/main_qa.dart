import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app_config.dart';
import 'main.dart';

void main() async {


  final qaAppConfig = AppConfig(
      appName: "Flavor QA",
      themeData: ThemeData(primarySwatch: Colors.yellow),
      options: const FirebaseOptions(
          apiKey: "YOUR_API_KEY",
          appId: "YOUR_APP_ID",
          messagingSenderId: "",
          projectId: "YOUR_PROJECT_ID"
        /// Add other necessary configurations for testing///
      ));
  runWithAppConfig(qaAppConfig);
}
