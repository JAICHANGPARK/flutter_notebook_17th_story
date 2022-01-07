import 'package:flutter/material.dart';

class BulletinNewsProfilePage extends StatelessWidget {
  const BulletinNewsProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 16,
              left: 16,
              bottom: 100,
              child: Container(
                height: 84,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(24),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                            size: 18,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text("Profile",
                              style: TextStyle(
                                color: Colors.black,
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 84,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 48,
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(),
                          ),
                          IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
                          const Spacer(),
                          Container(
                            height: 4,

                            decoration: const BoxDecoration(
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
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
