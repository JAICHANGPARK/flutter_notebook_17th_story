import 'package:flutter/material.dart';
import 'package:flutter_notebook_17th/ep1022_alphanect_app/src/ui/alphanect_main_page.dart';

class AlphanectApp extends StatelessWidget {
  const AlphanectApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AlphanectMainPage(),
    );
  }
}
