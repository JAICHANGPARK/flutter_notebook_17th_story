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
            height: 72,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.feed_outlined),
                      SizedBox(
                        height: 8,
                      ),
                      Text("Feed",style: TextStyle(
                        fontSize: 12
                      ),),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.feed_outlined),
                      SizedBox(
                        height: 8,
                      ),
                      Text("Workouts",style: TextStyle(
                          fontSize: 12
                      ),),
                    ],
                  ),
                ),
                Expanded(
                  child: CircleAvatar(
                    radius: 24,
                    child: Icon(Icons.add),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.feed_outlined),
                      SizedBox(
                        height: 8,
                      ),
                      Text("Meals",style: TextStyle(
                          fontSize: 12
                      ),),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.feed_outlined),
                      SizedBox(
                        height: 8,
                      ),
                      Text("Profile",style: TextStyle(
                          fontSize: 12
                      ),),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
