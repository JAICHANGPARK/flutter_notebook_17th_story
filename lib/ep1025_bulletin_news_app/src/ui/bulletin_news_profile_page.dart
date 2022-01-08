import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_17th/ep1025_bulletin_news_app/src/provider/bulletin_news_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
              top: 16,
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
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      height: 200,
                      child: Container(
                        color: Colors.red,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              right: 0,
                              top: 0,
                              child: Container(
                                height: 140,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(12),
                                  image: const DecorationImage(
                                      image: CachedNetworkImageProvider(
                                        "https://cdn.pixabay.com/photo/2021/12/21/14/47/castle-6885449__340.jpg",
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Dreamwalker"),
                          Text("@dreamwalker_flutter"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                      height: 72,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                    ),
                    Row(
                      children: [
                        const Text("Your Collections"),
                        TextButton(
                          onPressed: () {},
                          child: const Text("Show all"),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Consumer(
                builder: (BuildContext context, WidgetRef ref, Widget? child) {
                  final index = ref.watch(bulletinNewsTabProvider);
                  return Container(
                    height: 84,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 48,
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(),
                              ),
                              IconButton(
                                  onPressed: () {
                                    ref.read(bulletinNewsTabProvider.notifier).state = 0;
                                  },
                                  icon: const Icon(Icons.home)),
                              const Spacer(),
                              Container(
                                height: 3,
                                decoration: BoxDecoration(
                                  color: index == 0 ? Colors.black : Colors.transparent,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4),
                                    topRight: Radius.circular(4),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 48,
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(),
                              ),
                              IconButton(
                                  onPressed: () {
                                    ref.read(bulletinNewsTabProvider.notifier).state = 1;
                                  },
                                  icon: const Icon(Icons.location_searching)),
                              const Spacer(),
                              Container(
                                height: 3,
                                decoration: BoxDecoration(
                                  color: index == 1 ? Colors.black : Colors.transparent,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4),
                                    topRight: Radius.circular(4),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 48,
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(),
                              ),
                              IconButton(
                                  onPressed: () {
                                    ref.read(bulletinNewsTabProvider.notifier).state = 2;
                                  },
                                  icon: const Icon(Icons.all_inbox)),
                              const Spacer(),
                              Container(
                                height: 3,
                                decoration: BoxDecoration(
                                  color: index == 2 ? Colors.black : Colors.transparent,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4),
                                    topRight: Radius.circular(4),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 48,
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(),
                              ),
                              IconButton(
                                  onPressed: () {
                                    ref.read(bulletinNewsTabProvider.notifier).state = 3;
                                  },
                                  icon: const Icon(Icons.person)),
                              const Spacer(),
                              Container(
                                height: 3,
                                decoration: BoxDecoration(
                                  color: index == 3 ? Colors.black : Colors.transparent,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4),
                                    topRight: Radius.circular(4),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
