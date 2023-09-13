import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flavor_poc/app_config.dart';
import 'package:flutter/material.dart';

Future<void> runWithAppConfig(AppConfig config) async {

  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isIOS) {
    await Firebase.initializeApp(options: config.options);
  } else {
    await Firebase.initializeApp();
  }

  runApp(MyApp(
    appConfig: config,
  ));
}







class MyApp extends StatelessWidget {
  final AppConfig appConfig;

  const MyApp({super.key, required this.appConfig});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appConfig.appName,
      theme: appConfig.themeData,
      home: MyHomePage(title: appConfig.appName),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final FirebaseFirestore db = FirebaseFirestore.instance;

  Future<dynamic> getFlavorInfo() async {
    QuerySnapshot<Map<String, dynamic>> snapshot =
        await db.collection('test').get();
    List<dynamic> list = snapshot.docs.map((e) => e.data()["text"]).toList();
    return list[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FutureBuilder(
                future: getFlavorInfo(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(
                      snapshot.data ?? "",
                      style: Theme.of(context).textTheme.headlineMedium,
                    );
                  } else {
                    return Text(
                      "Loading",
                      style: Theme.of(context).textTheme.headlineMedium,
                    );
                  }
                }),
          ],
        ),
      ),
    );
  }
}
