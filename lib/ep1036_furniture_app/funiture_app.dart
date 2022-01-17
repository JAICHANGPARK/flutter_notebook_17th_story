import 'package:flutter/material.dart';
import 'package:flutter_notebook_17th/ep1036_furniture_app/src/ui/furniture_main_page.dart';


class FurnitureApp extends StatelessWidget {
  const FurnitureApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FurnitureMainPage(),
    );
  }
}
