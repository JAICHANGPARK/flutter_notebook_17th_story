import 'package:flutter/material.dart';

class RealEstateMainPage extends StatefulWidget {
  const RealEstateMainPage({Key? key}) : super(key: key);

  @override
  _RealEstateMainPageState createState() => _RealEstateMainPageState();
}

class _RealEstateMainPageState extends State<RealEstateMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 72,
                // decoration: const BoxDecoration(color: Colors.blue),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "You're located here",
                              style: TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              "London",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      height: 58,
                      width: 58,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.search,
                        size: 32,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 68,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                    colors: [
                      Colors.white.withOpacity(0.2),
                      Colors.black12,
                      Colors.black26,
                      Colors.black54,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                      ),
                    )),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Center(
                          child: Text(
                            "Buy",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Center(
                          child: Text(
                            "Sell",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                "Newly Added",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.pink,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 72,
                decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.black),
                      child: Center(child: Icon(Icons.home)),
                    ),
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.black),
                      child: Center(child: Icon(Icons.favorite_outlined)),
                    ),
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.black),
                      child: Center(child: Icon(Icons.favorite_outlined)),
                    ),
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.black),
                      child: Center(child: Icon(Icons.favorite_outlined)),
                    )
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
