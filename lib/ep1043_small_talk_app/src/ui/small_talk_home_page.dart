import 'package:flutter/material.dart';

class SmallTalkHomePage extends StatelessWidget {
  const SmallTalkHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: CircleAvatar(
            backgroundColor: Colors.white.withOpacity(0.2),
            foregroundColor: Colors.white,
            radius: 16,
            child: Icon(Icons.calendar_today_outlined),
          ),
        ),
        title: Text("small talk"),
        actions: [
          CircleAvatar(
            radius: 16,
            child: Icon(Icons.person_outlined),
            backgroundColor: Colors.white.withOpacity(0.2),
            foregroundColor: Colors.white,
          ),
        ],
      ),
      body: Column(),
    );
  }
}
