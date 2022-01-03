import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlphanectMainPage extends StatelessWidget {
  const AlphanectMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      children: [
                        const Icon(
                          Icons.camera,
                          color: Colors.blueAccent,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        const Text(
                          "Whitelabel",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                          ),
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
                  height: 64,
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        color: Colors.grey,
                      )),
                      SizedBox(
                        width: 6,
                      ),
                      Container(
                        height: 64,
                        width: 64,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Container(
                        height: 64,
                        width: 64,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
