import 'package:flutter/material.dart';


class BulletinNewsProfilePage extends StatelessWidget {
  const BulletinNewsProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 84,
                child: Row(
                  children: [

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
