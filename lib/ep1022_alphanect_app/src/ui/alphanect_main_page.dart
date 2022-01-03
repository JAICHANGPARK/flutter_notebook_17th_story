import 'package:flutter/material.dart';

class AlphanectMainPage extends StatelessWidget {
  const AlphanectMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.menu),
                  color: Colors.grey,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
