import 'package:flutter/material.dart';

import 'app_config.dart';
import 'main.dart';

void main() {


  final devAppConfig = AppConfig(
    appName: "Flavor DEV",
    themeData: ThemeData(primarySwatch: Colors.green),
  );
  //ApiService().baseUrl = 'https://devapi.fedoraindia.in/api/';
  runWithAppConfig(devAppConfig);
}