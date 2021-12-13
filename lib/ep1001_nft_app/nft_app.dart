import 'package:flutter/material.dart';

import 'src/ui/nft_main_page.dart';


class NftApp extends StatelessWidget {
  const NftApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/" : (context) => NftMainPage(),
      },
    );
  }
}
