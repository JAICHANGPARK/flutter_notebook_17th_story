import 'package:flutter/material.dart';

class BabylonApp extends StatefulWidget {
  const BabylonApp({Key? key}) : super(key: key);

  @override
  _BabylonAppState createState() => _BabylonAppState();
}

class _BabylonAppState extends State<BabylonApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BabylonMainPage(),
    );
  }
}
