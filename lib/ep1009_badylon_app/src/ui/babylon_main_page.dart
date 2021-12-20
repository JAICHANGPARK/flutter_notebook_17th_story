import 'package:flutter/material.dart';

/// 99 224 126
Color babylonGreenColor = const Color.fromRGBO(99, 224, 126, 1.0);

class BabylonMainPage extends StatefulWidget {
  const BabylonMainPage({Key? key}) : super(key: key);

  @override
  _BabylonMainPageState createState() => _BabylonMainPageState();
}

class _BabylonMainPageState extends State<BabylonMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.person_outline,
                    color: Colors.white,
                  ),
                  const Text(
                    "Babylon'la Ac Kendini",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.search),
                    color: Colors.white,
                    onPressed: () {},
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                  child: Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: babylonGreenColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                              left: 16,
                              top: 24,
                              bottom: 16,
                              right: 36,
                              child: Column(
                                children: const [
                                  Text(
                                    "25.02.2021",
                                    style: TextStyle(fontSize: 14, color: Colors.white),
                                  ),
                                  Spacer(),
                                  Text("Babylon"),
                                  Text("on the loop"),
                                  Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, "
                                      "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                                ],
                              )),
                          Positioned(
                              right: 16,
                              top: 16,
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 24,
                                    backgroundColor: Colors.white,
                                    foregroundColor: babylonGreenColor,
                                    child: Transform.rotate(
                                      angle: -0.8,
                                      child: const Icon(
                                        Icons.arrow_forward,
                                        size: 28,
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.star_border,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white.withOpacity(0.3),
                    ),
                  )),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
