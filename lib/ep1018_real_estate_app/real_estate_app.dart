import 'package:flutter/material.dart';
import 'package:flutter_notebook_17th/ep1018_real_estate_app/src/ui/real_estate_main_page.dart';

class RealEstateApp extends StatelessWidget {
  const RealEstateApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RealEstateMainPage(),
    );
  }
}
