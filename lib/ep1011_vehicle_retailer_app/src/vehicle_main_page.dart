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
                borderRadius: const BorderRadius.only(
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
                  padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
                          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
                          const CircleAvatar(
                            radius: 24,
                            backgroundColor: Colors.black,
                            child: Icon(Icons.add, size: 32,),
                            foregroundColor: Colors.white,
                          ),
                          IconButton(onPressed: () {}, icon: const Icon(Icons.attach_email_outlined)),
                          IconButton(onPressed: () {}, icon: const Icon(Icons.settings_outlined))
                        ],
                      ),
                      const SizedBox(
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
