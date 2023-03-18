import 'package:flutter/material.dart';

import 'app_config.dart';
import 'main.dart';

void main() {


  final qaAppConfig = AppConfig(
    appName: "Flavor QA",
    themeData: ThemeData(primarySwatch: Colors.yellow),
  );
  //ApiService().baseUrl = 'https://devapi.fedoraindia.in/api/';
  runWithAppConfig(qaAppConfig);
}