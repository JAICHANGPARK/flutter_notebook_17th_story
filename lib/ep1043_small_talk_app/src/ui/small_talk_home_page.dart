import 'package:flutter/material.dart';

class SmallTalkHomePage extends StatelessWidget {
  const SmallTalkHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: CircleAvatar(),
        title: Text("small talk"),
        actions: [
          CircleAvatar(),
        ],
      ),
      body: Column(),
    );
  }
}
