import 'package:flutter/material.dart';

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
                  Icon(
                    Icons.person_outline,
                    color: Colors.white,
                  ),
                  Text(
                    "Babylon'la Ac Kendini",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.search),
                    color: Colors.white,
                    onPressed: () {},
                  )
                ],
              ),
              Expanded(child: Column(
                children: [
                  Expanded(child: Placeholder()),
                  Expanded(child: Placeholder()),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
