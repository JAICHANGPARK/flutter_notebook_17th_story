import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

final searchTextControlProvider = Provider((ref) => TextEditingController());

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
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Consumer(
                              builder: (BuildContext context, WidgetRef ref, Widget? child) {
                                final controller = ref.watch(searchTextControlProvider);
                                return TextField(
                                  controller: controller,
                                  decoration: const InputDecoration(
                                    hintText: "Search..",
                                    border: InputBorder.none,
                                    icon: Icon(Icons.search),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(
                            child: RotatedBox(
                                quarterTurns: 1,
                                child: Icon(
                                  Icons.import_export,
                                  color: Colors.grey,
                                )),
                          ),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.filter_list,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const TabBar(
                    indicatorColor: Colors.blueAccent,
                    labelColor: Colors.blueAccent,
                    unselectedLabelColor: Colors.black,
                    indicatorWeight: 2,
                    tabs: [
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Container(
                                height: MediaQuery.of(context).size.width / 1.5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Expanded(
                                        flex: 5,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              right: 0,
                                              top: 0,
                                              bottom: 0,
                                              child: ClipRect(
                                                child: Container(
                                                  decoration: const BoxDecoration(
                                                    borderRadius: BorderRadius.only(
                                                      topRight: Radius.circular(8),
                                                      topLeft: Radius.circular(8),
                                                    ),
                                                    image: DecorationImage(
                                                      image: CachedNetworkImageProvider(
                                                        "https://cdn.pixabay.com/photo/2017/08/27/10/16/interior-2685521__340.jpg",
                                                      ),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  child: BackdropFilter(
                                                    filter: ImageFilter.blur(
                                                      sigmaX: 2,
                                                      sigmaY: 2,
                                                    ),
                                                    child: Container(
                                                      color: Colors.white.withOpacity(0.1),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                                right: 12,
                                                top: 12,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(12),
                                                  ),
                                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                                  child: const Center(
                                                    child: Text(
                                                      "Upcoming",
                                                      style: TextStyle(
                                                        color: Colors.blueAccent,
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ),
                                                )),
                                            Positioned(
                                              bottom: 12,
                                              right: 12,
                                              child: Card(
                                                child: Padding(
                                                  padding: const EdgeInsets.symmetric(
                                                    horizontal: 12,
                                                    vertical: 7,
                                                  ),
                                                  child: Row(
                                                    children: const [
                                                      Icon(
                                                        Icons.notifications_outlined,
                                                        color: Colors.grey,
                                                      ),
                                                      SizedBox(
                                                        width: 8,
                                                      ),
                                                      Text("Notify on launch"),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        )),
                                    Expanded(
                                        flex: 4,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  const Text(
                                                    "Senior Living",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                  const Spacer(),
                                                  const Text(
                                                    "80% funded",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 4,
                                                  ),
                                                  CircularPercentIndicator(
                                                    radius: 12,
                                                    lineWidth: 2,
                                                    backgroundWidth: 2,
                                                    progressColor: Colors.blueAccent,
                                                    percent: 0.8,
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 12,
                                              ),
                                              Text(
                                                "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                                style: TextStyle(fontSize: 12),
                                              ),
                                            ],
                                          ),
                                        )),
                                    Divider(
                                      height: 8,
                                    ),
                                    Expanded(
                                        flex: 3,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                  child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: const [
                                                  Text(
                                                    "Target size",
                                                    style: TextStyle(fontSize: 12),
                                                  ),
                                                  SizedBox(height: 4,),
                                                  Text("\$ 500M")
                                                ],
                                              )),
                                              Expanded(
                                                  child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: const [
                                                  Text(
                                                    "IRR",
                                                    style: TextStyle(fontSize: 12),
                                                  ),
                                                  SizedBox(height: 4,),
                                                  Text("7.0 %")
                                                ],
                                              )),
                                              Expanded(
                                                  child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: const [
                                                  Text(
                                                    "Cash on cash",
                                                    style: TextStyle(fontSize: 12),
                                                  ),
                                                  SizedBox(height: 4,),
                                                  Text("5.0%")
                                                ],
                                              )),
                                            ],
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
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
