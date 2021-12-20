import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VehicleMainPage extends StatefulWidget {
  const VehicleMainPage({Key? key}) : super(key: key);

  @override
  _VehicleMainPageState createState() => _VehicleMainPageState();
}

class _VehicleMainPageState extends State<VehicleMainPage> {
  int _btmTabIndex = 0;

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
                          IconButton(
                            onPressed: () {
                              setState(() {
                                _btmTabIndex = 0;
                              });

                            },
                            icon: const Icon(Icons.home),
                            color: _btmTabIndex == 0 ? Colors.black : Colors.grey,
                          ),
                          IconButton(onPressed: () {
                            setState(() {
                              _btmTabIndex = 1;
                            });
                          }, icon: const Icon(Icons.favorite_border),
                            color: _btmTabIndex == 1 ? Colors.black : Colors.grey,),
                          const CircleAvatar(
                            radius: 24,
                            backgroundColor: Colors.black,
                            child: Icon(
                              Icons.add,
                              size: 32,
                            ),
                            foregroundColor: Colors.white,
                          ),
                          IconButton(onPressed: () {
                            setState(() {
                              _btmTabIndex = 2;
                            });
                          }, icon: const Icon(Icons.attach_email_outlined),
                            color: _btmTabIndex == 2 ? Colors.black : Colors.grey,
                          ),
                          IconButton(onPressed: () {
                            setState(() {
                              _btmTabIndex = 3;
                            });
                          }, icon: const Icon(Icons.settings_outlined),
                            color: _btmTabIndex == 3 ? Colors.black : Colors.grey,)
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
