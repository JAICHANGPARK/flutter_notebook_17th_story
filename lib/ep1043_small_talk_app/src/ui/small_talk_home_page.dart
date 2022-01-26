import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final smallTalkBottomIndexProvider = StateProvider((ref) => 0);

class SmallTalkHomePage extends ConsumerWidget {
  const SmallTalkHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final tabIndex = ref.watch(smallTalkBottomIndexProvider);
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
            SizedBox(
              height: 24,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "There is nothing either\ngood or bad\nbut thinking makes\nit so.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "WILLIAM SHAKESPEARE",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "English poet",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [],
                )
              ],
            )),
            SizedBox(
              height: 64,
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                        child: Stack(
                      children: [
                        AnimatedPositioned(
                            left: 8,
                            right: 8,
                            top: tabIndex == 0 ? 0 : 12,
                            bottom: tabIndex == 0 ? 12 : 0,
                            duration: const Duration(milliseconds: 250),
                            child: GestureDetector(
                              onTap: () {
                                ref.read(smallTalkBottomIndexProvider.notifier).state = 0;
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: tabIndex == 0 ? Colors.blueAccent : Colors.transparent,
                                  border: Border.all(color: Colors.blueAccent),
                                ),
                                child: Icon(
                                  tabIndex == 0 ? Icons.flash_on : Icons.flash_on_outlined,
                                  color: tabIndex == 0 ? Colors.white : Colors.blueAccent,
                                ),
                              ),
                            ))
                      ],
                    )),
                    Expanded(
                        child: Stack(
                      children: [
                        AnimatedPositioned(
                            left: 8,
                            right: 8,
                            top: tabIndex == 1 ? 0 : 12,
                            bottom: tabIndex == 1 ? 12 : 0,
                            duration: const Duration(milliseconds: 250),
                            child: GestureDetector(
                              onTap: () {
                                ref.read(smallTalkBottomIndexProvider.notifier).state = 1;
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: tabIndex == 1 ? Colors.green : Colors.transparent,
                                  border: Border.all(color: Colors.green),
                                ),
                                child: Icon(
                                  tabIndex == 1 ? Icons.highlight : Icons.highlight_outlined,
                                  color: tabIndex == 1 ? Colors.white : Colors.green,
                                ),
                              ),
                            ))
                      ],
                    )),
                    Expanded(
                        child: Stack(
                      children: [
                        AnimatedPositioned(
                            left: 8,
                            right: 8,
                            top: tabIndex == 2 ? 0 : 12,
                            bottom: tabIndex == 2 ? 12 : 0,
                            duration: const Duration(milliseconds: 250),
                            child: GestureDetector(
                              onTap: () {
                                ref.read(smallTalkBottomIndexProvider.notifier).state = 2;
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: tabIndex == 2 ? Colors.pink : Colors.transparent,
                                  border: Border.all(color: Colors.pink),
                                ),
                                child: Icon(
                                  tabIndex == 2 ? Icons.flash_on : Icons.flash_on_outlined,
                                  color: tabIndex == 2 ? Colors.white : Colors.pink,
                                ),
                              ),
                            ))
                      ],
                    )),
                    Expanded(
                        child: Stack(
                      children: [
                        AnimatedPositioned(
                            left: 8,
                            right: 8,
                            top: tabIndex == 3 ? 0 : 12,
                            bottom: tabIndex == 3 ? 12 : 0,
                            duration: const Duration(milliseconds: 250),
                            child: GestureDetector(
                              onTap: () {
                                ref.read(smallTalkBottomIndexProvider.notifier).state = 3;
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: tabIndex == 3 ? Colors.orange : Colors.transparent,
                                  border: Border.all(color: Colors.orange),
                                ),
                                child: Icon(
                                  tabIndex == 3 ? Icons.calendar_month : Icons.calendar_today,
                                  color: tabIndex == 3 ? Colors.white : Colors.orange,
                                ),
                              ),
                            ))
                      ],
                    )),
                    Expanded(
                        child: Stack(
                      children: [
                        AnimatedPositioned(
                            left: 8,
                            right: 8,
                            top: tabIndex == 4 ? 0 : 12,
                            bottom: tabIndex == 4 ? 12 : 0,
                            duration: const Duration(milliseconds: 250),
                            child: GestureDetector(
                              onTap: () {
                                ref.read(smallTalkBottomIndexProvider.notifier).state = 4;
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: tabIndex == 4 ? Colors.red : Colors.transparent,
                                  border: Border.all(color: Colors.red),
                                ),
                                child: Icon(
                                  tabIndex == 4 ? Icons.mobile_friendly : Icons.mobile_friendly,
                                  color: tabIndex == 4 ? Colors.white : Colors.red,
                                ),
                              ),
                            ))
                      ],
                    )),
                    Expanded(
                        child: Stack(
                      children: [
                        AnimatedPositioned(
                            left: 8,
                            right: 8,
                            top: tabIndex == 5 ? 0 : 12,
                            bottom: tabIndex == 5 ? 12 : 0,
                            duration: const Duration(milliseconds: 250),
                            child: GestureDetector(
                              onTap: () {
                                ref.read(smallTalkBottomIndexProvider.notifier).state = 5;
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: tabIndex == 5 ? Colors.purple : Colors.transparent,
                                  border: Border.all(color: Colors.purple),
                                ),
                                child: Icon(
                                  tabIndex == 5 ? Icons.chat : Icons.chat_outlined,
                                  color: tabIndex == 5 ? Colors.white : Colors.purple,
                                ),
                              ),
                            ))
                      ],
                    )),
                  ],
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.keyboard_arrow_down),
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
