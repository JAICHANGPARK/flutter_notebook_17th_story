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
                        Text(
                          "Upcoming consultations",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_vert),
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: SizedBox(
                      height: 200,
                      child: Container(
                        color: Colors.grey,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 160,
                                decoration: BoxDecoration(
                                  color: index == 0 ? Color.fromRGBO(0, 82, 168, 1) :
                                  Color.fromRGBO(37, 61, 87, 1),
                                  borderRadius: BorderRadius.circular(8)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          CircleAvatar(),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
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
                  )
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
