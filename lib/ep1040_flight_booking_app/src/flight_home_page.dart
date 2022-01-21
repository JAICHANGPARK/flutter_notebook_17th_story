import 'package:flutter/material.dart';

class FlightHomePage extends StatefulWidget {
  const FlightHomePage({Key? key}) : super(key: key);

  @override
  _FlightHomePageState createState() => _FlightHomePageState();
}

class _FlightHomePageState extends State<FlightHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("e Flights"),
        foregroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_outlined),
          )
        ],
      ),
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            Expanded(
              flex: 19,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 48,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Colors.black,
                          ),
                          boxShadow: [BoxShadow(color: Colors.indigo[400]!, offset: Offset(4, 4))]),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24))),
                child: Row(
                  children: [],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
