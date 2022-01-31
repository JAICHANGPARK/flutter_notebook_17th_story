import 'package:flutter/material.dart';

class AccountSettingHomePage extends StatelessWidget {
  const AccountSettingHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.grey[200],
                          child: const Icon(Icons.chevron_left),
                          foregroundColor: Colors.black,
                        ),
                        const Expanded(
                          child: Center(
                            child: Text(
                              "Settings",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Container(
                      height: 42,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [
                          BoxShadow(color: Colors.grey[300]!, spreadRadius: 3, blurRadius: 1.5),
                        ],
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Type to search",
                            icon: Icon(Icons.search),
                            hintStyle: TextStyle(fontSize: 13)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Account",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Update your info to keep your account",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(color: Colors.blueGrey[50], borderRadius: BorderRadius.circular(16)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.account_circle_outlined),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                "Account information",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.keyboard_arrow_right,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.supervisor_account_outlined),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                "Friends",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.keyboard_arrow_right,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.notifications_outlined),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                "Account information",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.keyboard_arrow_right,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Privacy",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Customize your privacy to make experience better",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(color: Colors.blueGrey[50], borderRadius: BorderRadius.circular(16)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.lock_outlined),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                "Security",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.keyboard_arrow_right,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.logout),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                "Login details",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.keyboard_arrow_right,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.monetization_on),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                "Billing",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.keyboard_arrow_right,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.visibility_off_outlined),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                "Privacy",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.keyboard_arrow_right,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )),
            Divider(
              height: 0,
              thickness: 1.2,
              color: Colors.grey[200],
            ),
            Container(
              height: 72,
              decoration: const BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.inbox)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.bookmarks)),
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: const Color.fromRGBO(34, 34, 225, 1),
                    child: const Icon(Icons.edit),
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
