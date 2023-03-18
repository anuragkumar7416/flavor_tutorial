import 'package:flutter/material.dart';

import 'app_config.dart';
import 'main.dart';

void main() {


  final prodAppConfig = AppConfig(
    appName: "Flavor Prod",
    themeData: ThemeData(primarySwatch: Colors.blue),
  );
  //ApiService().baseUrl = 'https://devapi.fedoraindia.in/api/';
  runWithAppConfig(prodAppConfig);
}