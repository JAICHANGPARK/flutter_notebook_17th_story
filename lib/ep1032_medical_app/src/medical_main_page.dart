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
                    child: IconButton(onPressed: () {}, icon: Icon(Icons.contact_mail_outlined)),
                  )),
                  Expanded(
                      child: Center(
                        child: IconButton(onPressed: () {}, icon: Icon(Icons.calendar_today)),
                      )),
                   Expanded(child: Badge()),
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
