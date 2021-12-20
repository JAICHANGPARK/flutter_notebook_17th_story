import 'package:flutter/material.dart';

class VehicleMainPage extends StatefulWidget {
  const VehicleMainPage({Key? key}) : super(key: key);

  @override
  _VehicleMainPageState createState() => _VehicleMainPageState();
}

class _VehicleMainPageState extends State<VehicleMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              child: Container(
            height: 84,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                )),
          )),
        ],
      ),
    );
  }
}
