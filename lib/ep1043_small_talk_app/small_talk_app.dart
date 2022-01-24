import 'package:flutter/material.dart';
import 'package:flutter_notebook_17th/ep1043_small_talk_app/src/ui/small_talk_home_page.dart';

class SmallTalkApp extends StatelessWidget {
  const SmallTalkApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => SmallTalkHomePage(),
      },
    );
  }
}
