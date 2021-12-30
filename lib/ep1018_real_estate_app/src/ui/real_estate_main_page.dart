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
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 72,
                decoration: const BoxDecoration(color: Colors.blue),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("You're located here"),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.grey,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 82,
                decoration: const BoxDecoration(color: Colors.blue),
              ),
            ),
            const Text("newly Added"),
            Expanded(
                child: Container(
              color: Colors.pink,
            )),
            Container(
              height: 72,
              color: Colors.orange,
            )
          ],
        ),
      ),
    );
  }
}
