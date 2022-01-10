import 'package:flutter/material.dart';

import 'src/ui/workouts_main_page.dart';

class WorkoutsApp extends StatelessWidget {
  const WorkoutsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WorkoutsMainPage(),
    );
  }
}
