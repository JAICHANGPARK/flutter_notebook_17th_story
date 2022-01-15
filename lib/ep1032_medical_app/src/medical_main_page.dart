import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class MedicalMainPage extends StatelessWidget {
  const MedicalMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(7, 33, 60, 1),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        const CircleAvatar(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Welcome back",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "Jessica",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          iconSize: 28,
                          onPressed: () {},
                          icon: const Icon(Icons.menu),
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Upcoming consultations",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.more_vert),
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: SizedBox(
                      height: 190,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 140,
                              decoration: BoxDecoration(
                                  color: index == 0
                                      ? const Color.fromRGBO(0, 82, 168, 1)
                                      : const Color.fromRGBO(37, 61, 87, 1),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const CircleAvatar(),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: const [
                                            Text(
                                              "5:45 PM",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "DEC 7",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Text(
                                      "Dream",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    const Text(
                                      "Walker",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: index == 0
                                            ? const Color.fromRGBO(0, 219, 167, 1)
                                            : const Color.fromRGBO(7, 33, 60, 1),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                      child: const Center(
                                        child: Text(
                                          "Join the call",
                                          style: TextStyle(color: Colors.white, fontSize: 12),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        scrollDirection: Axis.horizontal,
                        itemCount: 8,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Patient profiles",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.more_vert),
                          color: Colors.grey,
                        ),
                      ],
                    ),

                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: SizedBox(
                      height: 64,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: CircleAvatar(
                              radius: 24,
                            ),
                          );
                        },
                        scrollDirection: Axis.horizontal,
                        itemCount: 8,
                      ),
                    ),
                  ),
                ],
              ),
              flex: 20,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.white.withOpacity(0.3),
                    foregroundColor: const Color.fromRGBO(0, 219, 167, 1),
                    child: const Icon(Icons.home_outlined),
                  )),
                  Expanded(
                      child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.contact_mail_outlined),
                      color: Colors.grey,
                    ),
                  )),
                  Expanded(
                      child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.calendar_today),
                      color: Colors.grey,
                    ),
                  )),
                  Expanded(
                      child: Center(
                    child: Badge(
                      badgeContent: const Text('3'),
                      child: const Icon(
                        Icons.notifications_outlined,
                        color: Colors.grey,
                      ),
                    ),
                  )),
                ],
              ),
              flex: 3,
            )
          ],
        ),
      ),
    );
  }
}
