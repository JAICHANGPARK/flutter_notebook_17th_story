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
                      width: 8,
                      color: Colors.grey,
                    )),
              )),
          const Positioned(
              right: 100,
              top: 48,
              child: const CircleAvatar(
                radius: 16,
              )),
          const Positioned(
              right: 72,
              top: 84,
              child: const CircleAvatar(
                radius: 8,
                backgroundColor: Colors.greenAccent,
              )),
          Positioned(
              top: 200,
              left: 32,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Virtual",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Ecosystem",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text("Specializsed healthcare, on a single tech platform."),
                  SizedBox(
                    height: 4,
                  ),
                  Text("simplifying access for anyone. anywhere")
                ],
              )),
          Positioned(
              right: 0,
              bottom: 100,
              left: 0,
              child: Center(
                child: Container(
                  height: 240,
                  width: 240,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 1,
                        color: Colors.grey,
                      )),
                ),
              )),
          Positioned(
              right: 0,
              bottom: 98,
              left: 12,
              child: Center(
                child: Container(
                  height: 240,
                  width: 240,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 1,
                        color: Colors.grey,
                      )),
                ),
              )),
          Positioned(
              bottom: 160,
              left: 32,
              child: Center(
                child: Container(
                  height: 240,
                  width: 140,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              )),
          Positioned(
              bottom: 84,
              right: 32,
              child: Center(
                child: Container(
                  height: 240,
                  width: 140,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              )),
          Positioned(
            left: 32,
              bottom: 48,
              child: Row(
            children: [
              FloatingActionButton(onPressed: () {}),
              Column(
                children: [
                  Text("Get"),
                  Text("started"),
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
