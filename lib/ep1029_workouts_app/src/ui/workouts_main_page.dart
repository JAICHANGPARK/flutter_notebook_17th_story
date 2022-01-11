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
                              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
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
                                  style: const TextStyle(color: Colors.white,
                                  fontSize: 10),
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
                                SizedBox(height: 24,),
                                Container(
                                  constraints: const BoxConstraints(
                                    minWidth: 120,
                                    maxWidth: 120
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.greenAccent,
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                                  child: const Center(
                                    child: Text("READ",style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                    ),),
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
                    Container(
                      height: 360,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
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
                        Icon(Icons.feed_outlined),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Feed",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(Icons.fitness_center),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Workouts",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: const Center(
                      child: CircleAvatar(
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
                        Icon(Icons.fastfood_outlined),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Meals",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(Icons.person),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(fontSize: 12),
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
