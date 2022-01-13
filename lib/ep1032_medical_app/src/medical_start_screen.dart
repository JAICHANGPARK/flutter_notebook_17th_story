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
                height: 84,
                width: 84,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 6,
                      color: Colors.grey,
                    )),
              )),
          const Positioned(
              right: 100,
              top: 48,
              child: const CircleAvatar(
                radius: 16,
              ))
        ],
      ),
    );
  }
}
