import 'package:flutter/material.dart';

class SmallTalkHomePage extends StatelessWidget {
  const SmallTalkHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: CircleAvatar(
            radius: 16,
            child: Icon(Icons.calendar_today_outlined),
          ),
        ),
        title: Text("small talk"),
        actions: [
          CircleAvatar(
            radius: 16,
            child: Icon(Icons.person_outlined),
          ),
        ],
      ),
      body: Column(),
    );
  }
}
