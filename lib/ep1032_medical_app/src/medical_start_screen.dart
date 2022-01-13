import 'package:flutter/material.dart';

class MedicalStartScreen extends StatelessWidget {
  const MedicalStartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              right: -16,
              top: -24,
              child: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 4,
                      color: Colors.grey,
                    )),
              ))
        ],
      ),
    );
  }
}
