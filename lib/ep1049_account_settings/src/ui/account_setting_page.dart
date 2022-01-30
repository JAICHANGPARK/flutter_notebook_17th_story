import 'package:flutter/material.dart';

class AccountSettingPage extends StatelessWidget {
  const AccountSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.grey[200],
                          child: Icon(Icons.chevron_left),
                        ),
                        CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.grey[200],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Apps",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text("Connected apps and services"),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Social profiles",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 42,
                                width: 42,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Text("Facebook"),
                                  Text("Connected"),
                                ],
                              ),
                              CircleAvatar(
                                backgroundColor: Color.fromRGBO(238, 238, 255, 1),
                                foregroundColor: Color.fromRGBO(34, 34, 225, 1),
                                child: Icon(Icons.check),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Divider(
              height: 0,
              thickness: 1.2,
              color: Colors.grey,
            ),
            Container(
              height: 72,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.inbox)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.bookmarks)),
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Color.fromRGBO(34, 34, 225, 1),
                    child: Icon(Icons.edit),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
