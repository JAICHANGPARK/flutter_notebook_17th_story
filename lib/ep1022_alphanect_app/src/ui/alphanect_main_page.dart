import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchTextControlProvider = Provider((ref)=> TextEditingController());

class AlphanectMainPage extends StatelessWidget {
  const AlphanectMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.menu),
                      color: Colors.grey,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.camera,
                            color: Colors.blueAccent,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "Whitelabel",
                            style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notifications_outlined),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 58,
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                          color: Colors.grey,
                        )),
                        const SizedBox(
                          width: 6,
                        ),
                        Container(
                          height: 58,
                          width: 58,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Container(
                          height: 58,
                          width: 58,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
                const TabBar(indicatorColor: Colors.blueAccent,
                    labelColor: Colors.blueAccent,
                    unselectedLabelColor: Colors.black, tabs: [
                  Tab(
                    text: "All",
                  ),
                  Tab(
                    text: "Open (32)",
                  ),
                  Tab(
                    text: "Upcoming (8)",
                  ),
                  Tab(
                    text: "Closed (9)",
                  ),
                ]),
                const Divider(
                  height: 0,
                  color: Colors.grey,
                ),
                Expanded(
                    child: TabBarView(
                  children: [
                    Container(
                      color: Colors.red,
                    ),
                    Container(
                      color: Colors.blue,
                    ),
                    Container(
                      color: Colors.green,
                    ),
                    Container(
                      color: Colors.orange,
                    ),
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
