import 'package:flutter/material.dart';

import 'src/ui/bulletin_news_profile_page.dart';


class BulletinNewsApp extends StatelessWidget {
  const BulletinNewsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BulletinNewsProfilePage(),
    );
  }
}
