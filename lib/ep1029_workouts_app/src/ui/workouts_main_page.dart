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
                      decoration:  const BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(image: CachedNetworkImageProvider(
                          "https://cdn.pixabay.com/photo/2017/04/22/10/15/woman-2250970__340.jpg",
                        ),
                        fit: BoxFit.cover
                        )
                      ),
                      padding: const EdgeInsets.only(top: 16, right: 8, left: 8),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "today pick".toUpperCase(),
                          ),
                          const Text("Need some\nmotivation for today?\nLets hear Jessica story"),
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
