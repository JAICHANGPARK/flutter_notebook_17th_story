import 'package:flutter/material.dart';


class AccountSettingHomePage extends StatelessWidget {
  const AccountSettingHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: Placeholder()),
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
