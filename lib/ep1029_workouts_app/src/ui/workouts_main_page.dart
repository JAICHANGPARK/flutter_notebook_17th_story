import 'package:flutter/material.dart';

class WorkoutsMainPage extends StatefulWidget {
  const WorkoutsMainPage({Key? key}) : super(key: key);

  @override
  _WorkoutsMainPageState createState() => _WorkoutsMainPageState();
}

class _WorkoutsMainPageState extends State<WorkoutsMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [],
              ),
            ),
          ),
          Container(
            height: 64,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.feed_outlined),
                    SizedBox(
                      height: 8,
                    ),
                    Text("Feed"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.feed_outlined),
                    SizedBox(
                      height: 8,
                    ),
                    Text("Workouts"),
                  ],
                ),
                FloatingActionButton(onPressed: () {}),
                Column(
                  children: [
                    Icon(Icons.feed_outlined),
                    SizedBox(
                      height: 8,
                    ),
                    Text("Meals"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.feed_outlined),
                    SizedBox(
                      height: 8,
                    ),
                    Text("Profile"),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
