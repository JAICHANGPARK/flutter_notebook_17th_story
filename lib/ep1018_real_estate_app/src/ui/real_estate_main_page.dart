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
      body: Column(
        children: [
          Container(
            height: 72,
            decoration: BoxDecoration(color: Colors.blue),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 82,
              decoration: BoxDecoration(color: Colors.blue),
            ),
          ),
          Text("newly Added"),
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
    );
  }
}
