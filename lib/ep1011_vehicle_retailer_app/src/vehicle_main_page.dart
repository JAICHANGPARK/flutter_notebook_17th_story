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
      backgroundColor: Colors.grey[100],
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 0,
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(28),
                        ),
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 24),
                              child: Row(
                                children: [
                                  const Text(
                                    "Explore",
                                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),
                                  ),
                                  const Spacer(),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.search),
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        width: 120,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                        padding: const EdgeInsets.all(8),
                                        child: Column(
                                          children: const [
                                            Spacer(),
                                            Text(
                                              "World news of the week",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            )
                                          ],
                                        ),
                                      );
                                    })),
                            const Text(
                              'Last seen',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              height: 64,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 42,
                                    width: 42,
                                    decoration: const BoxDecoration(
                                      color: Colors.green,
                                    ),
                                  ),
                                  Column(
                                    children: const [Text("BMW X1 II(F48) 2019"), Text("\$35,400")],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                  Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Recommended"),
                            SizedBox(
                              height: 300,
                              child: Column(
                                children: [],
                              ),
                            )
                          ],
                        ),
                      )),
                ],
              )),
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
                          IconButton(
                            onPressed: () {
                              setState(() {
                                _btmTabIndex = 1;
                              });
                            },
                            icon: const Icon(Icons.favorite_border),
                            color: _btmTabIndex == 1 ? Colors.black : Colors.grey,
                          ),
                          GestureDetector(
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Hello")));
                            },
                            child: const CircleAvatar(
                              radius: 24,
                              backgroundColor: Colors.black,
                              child: Icon(
                                Icons.add,
                                size: 32,
                              ),
                              foregroundColor: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                _btmTabIndex = 2;
                              });
                            },
                            icon: const Icon(Icons.attach_email_outlined),
                            color: _btmTabIndex == 2 ? Colors.black : Colors.grey,
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                _btmTabIndex = 3;
                              });
                            },
                            icon: const Icon(Icons.settings_outlined),
                            color: _btmTabIndex == 3 ? Colors.black : Colors.grey,
                          )
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
