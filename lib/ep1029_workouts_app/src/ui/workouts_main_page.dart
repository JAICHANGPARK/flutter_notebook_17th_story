import 'package:cached_network_image/cached_network_image.dart';
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
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 420,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          image: DecorationImage(
                              image: const CachedNetworkImageProvider(
                                "https://cdn.pixabay.com/photo/2017/04/22/10/15/woman-2250970__340.jpg",
                              ),
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.2),
                                BlendMode.darken,
                              ),
                              fit: BoxFit.cover)),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 16,
                            top: 48,
                            bottom: 0,
                            right: 8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "today pick".toUpperCase(),
                                  style: const TextStyle(color: Colors.white, fontSize: 10),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                const Text(
                                  "Need some",
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                  "motivation for today?",
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                  "Lets hear",
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                  "Jessica story",
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                Container(
                                  constraints: const BoxConstraints(minWidth: 120, maxWidth: 120),
                                  decoration: BoxDecoration(
                                    color: const Color(0xff25AB75),
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                                  child: const Center(
                                    child: Text(
                                      "READ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                              top: 100,
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.center,
                                      colors: [
                                        Colors.black,
                                        Colors.black.withOpacity(0.7),
                                        Colors.black.withOpacity(0.5),
                                        Colors.black.withOpacity(0.2)
                                      ]),
                                ),
                              ))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        height: 320,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "YOUR GOALS",
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                            const SizedBox(height: 12,),
                            Expanded(
                                child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                      image: CachedNetworkImageProvider(
                                        "https://cdn.pixabay.com/photo/2016/11/22/22/24/adult-1850925__340.jpg",
                                      ),
                                      fit: BoxFit.cover,
                                    )),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 160,
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    decoration:  BoxDecoration(
                                       gradient: LinearGradient(
                                         begin: Alignment.bottomCenter,
                                         end: Alignment.center,
                                         colors: [
                                           Colors.black,
                                           Colors.black.withOpacity(0.6),
                                           Colors.black.withOpacity(0.4),
                                           Colors.black.withOpacity(0.2),
                                         ]
                                       )
                                       ),
                                  ),
                                ),
                                Positioned(
                                  left: 16,
                                  top: 160,
                                  bottom: 16,
                                  right: 0,
                                  child: Column(
                                    children: [
                                      Text("Workouts"),
                                      Text("2 OUT 4 TASKS")
                                    ]
                                  ),
                                ),
                              ],
                            )),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 72,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.feed_outlined,
                          color: Color(0xff25AB75),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Feed",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff25AB75),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(Icons.fitness_center, color: Colors.grey),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Workouts",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: Center(
                      child: CircleAvatar(
                        backgroundColor: Color(0xff25AB75),
                        foregroundColor: Colors.white,
                        radius: 24,
                        child: Icon(Icons.add),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(Icons.fastfood_outlined, color: Colors.grey),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Meals",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(Icons.person, color: Colors.grey),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
