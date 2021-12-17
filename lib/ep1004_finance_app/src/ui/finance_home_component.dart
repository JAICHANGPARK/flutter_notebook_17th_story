import 'package:flutter/material.dart';

class FinanceHomeComponent extends StatelessWidget {
  const FinanceHomeComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              children: [
                Text("Hi, Dreamwalker"),
                Text("Welcome to Mumet"),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blueAccent[100],
                shape: BoxShape.circle,
              ),
              padding: EdgeInsets.all(2),
              child: CircleAvatar(),
            )
          ],
        )
      ],
    );
  }
}
