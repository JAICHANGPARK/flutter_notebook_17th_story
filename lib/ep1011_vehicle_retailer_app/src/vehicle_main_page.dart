import 'package:flutter/cupertino.dart';
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
              bottom: 0,
              left: 0,
              right: 0,
              child: PhysicalModel(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
                elevation: 24,
                child: Container(
                  height: 100,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      )),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [IconButton(onPressed: () {}, icon: Icon(Icons.home)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.home)),
                        CircleAvatar(),
                          IconButton(onPressed: () {}, icon: Icon(Icons.home)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.home))],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
