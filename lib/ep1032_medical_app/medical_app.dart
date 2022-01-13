import 'package:flutter/material.dart';

import 'src/medical_start_screen.dart';

class MedicalApp extends StatelessWidget {
  const MedicalApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MedicalStartScreen(),
    );
  }
}
