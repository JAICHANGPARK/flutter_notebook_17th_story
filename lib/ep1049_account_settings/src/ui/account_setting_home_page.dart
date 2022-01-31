import 'package:flutter/material.dart';

class AccountSettingHomePage extends StatelessWidget {
  const AccountSettingHomePage({Key? key}) : super(key: key);

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
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Type to search",
                          icon: Icon(Icons.search),
                        ),
                      ),
                    ),
                  )
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
