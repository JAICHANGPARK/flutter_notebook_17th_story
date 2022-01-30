import 'package:flutter/material.dart';

class AccountSettingPage extends StatelessWidget {
  const AccountSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Placeholder(),
            ),
            Divider(
              height: 0,
              thickness: 1.2,
              color: Colors.grey,
            ),
            Container(
              height: 72,
              decoration: BoxDecoration(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
