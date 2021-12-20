import 'package:flutter/material.dart';

import 'src/ui/babylon_main_page.dart';

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
