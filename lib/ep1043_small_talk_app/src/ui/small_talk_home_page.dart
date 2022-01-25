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
            const Expanded(child: Placeholder()),
            SizedBox(
              height: 64,
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                        child: Stack(
                      children: [
                        AnimatedPositioned(
                            left: 0,
                            right: 0,
                            top: tabIndex == 0 ? 0 : 8,
                            bottom: tabIndex == 0 ? 8 : 0,
                            duration: const Duration(milliseconds: 250),
                            child: GestureDetector(
                              onTap: () {
                                ref.read(smallTalkBottomIndexProvider.notifier).state = 0;
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color:   tabIndex == 0 ? Colors.blueAccent : Colors.transparent,
                                  border: Border.all(color: Colors.blueAccent),
                                ),
                                child:  Icon(
                                  tabIndex == 0 ? Icons.flash_on : Icons.flash_on_outlined,
                                  color:  tabIndex == 0 ? Colors.white : Colors.blueAccent,
                                ),
                              ),
                            ))
                      ],
                    )),
                    Expanded(
                        child: Stack(
                          children: [
                            AnimatedPositioned(
                                left: 4,
                                right: 4,
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
                                      color:   tabIndex == 1 ? Colors.blueAccent : Colors.transparent,
                                      border: Border.all(color: Colors.blueAccent),
                                    ),
                                    child:  Icon(
                                      tabIndex == 1? Icons.flash_on : Icons.flash_on_outlined,
                                      color:  tabIndex == 1 ? Colors.white : Colors.blueAccent,
                                    ),
                                  ),
                                ))
                          ],
                        )),
                    Expanded(
                        child: Stack(
                          children: [
                            AnimatedPositioned(
                                left: 4,
                                right: 4,
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
                                      color:   tabIndex == 2 ? Colors.blueAccent : Colors.transparent,
                                      border: Border.all(color: Colors.blueAccent),
                                    ),
                                    child:  Icon(
                                      tabIndex == 2 ? Icons.flash_on : Icons.flash_on_outlined,
                                      color:  tabIndex == 2 ? Colors.white : Colors.blueAccent,
                                    ),
                                  ),
                                ))
                          ],
                        )),
                    Expanded(
                        child: Stack(
                          children: [
                            AnimatedPositioned(
                                left: 0,
                                right: 0,
                                top: tabIndex == 3 ? 0 : 8,
                                bottom: tabIndex == 3 ? 8 : 0,
                                duration: const Duration(milliseconds: 250),
                                child: GestureDetector(
                                  onTap: () {
                                    ref.read(smallTalkBottomIndexProvider.notifier).state = 3;
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:   tabIndex == 3 ? Colors.blueAccent : Colors.transparent,
                                      border: Border.all(color: Colors.blueAccent),
                                    ),
                                    child:  Icon(
                                      tabIndex == 3? Icons.flash_on : Icons.flash_on_outlined,
                                      color:  tabIndex == 3 ? Colors.white : Colors.blueAccent,
                                    ),
                                  ),
                                ))
                          ],
                        )),
                    Expanded(
                        child: Stack(
                          children: [
                            AnimatedPositioned(
                                left: 0,
                                right: 0,
                                top: tabIndex == 0 ? 0 : 8,
                                bottom: tabIndex == 0 ? 8 : 0,
                                duration: const Duration(milliseconds: 250),
                                child: GestureDetector(
                                  onTap: () {
                                    ref.read(smallTalkBottomIndexProvider.notifier).state = 0;
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:   tabIndex == 0 ? Colors.blueAccent : Colors.transparent,
                                      border: Border.all(color: Colors.blueAccent),
                                    ),
                                    child:  Icon(
                                      tabIndex == 0 ? Icons.flash_on : Icons.flash_on_outlined,
                                      color:  tabIndex == 0 ? Colors.white : Colors.blueAccent,
                                    ),
                                  ),
                                ))
                          ],
                        )),
                    Expanded(
                        child: Stack(
                          children: [
                            AnimatedPositioned(
                                left: 0,
                                right: 0,
                                top: tabIndex == 0 ? 0 : 8,
                                bottom: tabIndex == 0 ? 8 : 0,
                                duration: const Duration(milliseconds: 250),
                                child: GestureDetector(
                                  onTap: () {
                                    ref.read(smallTalkBottomIndexProvider.notifier).state = 0;
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:   tabIndex == 0 ? Colors.blueAccent : Colors.transparent,
                                      border: Border.all(color: Colors.blueAccent),
                                    ),
                                    child:  Icon(
                                      tabIndex == 0 ? Icons.flash_on : Icons.flash_on_outlined,
                                      color:  tabIndex == 0 ? Colors.white : Colors.blueAccent,
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
