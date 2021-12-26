import 'package:flutter/material.dart';

class MovieFinderHomePage extends StatelessWidget {
  const MovieFinderHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Find movies like"),
          Container(
            height: 64,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[300]!,
                ),
                borderRadius: BorderRadius.circular(24)),
          )
        ],
      ),
    );
  }
}
