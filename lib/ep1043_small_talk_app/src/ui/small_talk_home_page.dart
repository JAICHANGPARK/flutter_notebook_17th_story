import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final smallTalkBottomIndexProvider = StateProvider((ref)=> 0);

class SmallTalkHomePage extends StatelessWidget {
  const SmallTalkHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: CircleAvatar(
            backgroundColor: Colors.white.withOpacity(0.2),
            foregroundColor: Colors.white,
            radius: 16,
            child: const Icon(Icons.calendar_today_outlined),
          ),
        ),
        title: const Text("small talk"),
        actions: [
          CircleAvatar(
            radius: 16,
            child: const Icon(Icons.person_outlined),
            backgroundColor: Colors.white.withOpacity(0.2),
            foregroundColor: Colors.white,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            Row(
              children: [
                const Expanded(
                    child: Text(
                  "TODAY",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )),
                Expanded(
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blueAccent,
                          ),
                          borderRadius: BorderRadius.circular(24)),
                      child: const Text(
                        "INSPIRATION",
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ),
                  ),
                ),
                Expanded(child: Container()),
              ],
            ),
            Expanded(child: Placeholder()),
            SizedBox(
              height: 52,
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                        child: Stack(
                      children: [
                        AnimatedPositioned(
                            left: 0,
                            right: 0,
                            top: 0,
                            bottom: 8,
                            duration: Duration(milliseconds: 250),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blueAccent,
                                border: Border.all(color: Colors.blueAccent),
                              ),
                              child: Icon(
                                Icons.flash_on,
                                color: Colors.white,
                              ),
                            ))
                      ],
                    )),
                    Expanded(child: Stack()),
                    Expanded(child: Stack()),
                    Expanded(child: Stack()),
                    Expanded(child: Stack()),
                  ],
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.keyboard_arrow_down),
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
