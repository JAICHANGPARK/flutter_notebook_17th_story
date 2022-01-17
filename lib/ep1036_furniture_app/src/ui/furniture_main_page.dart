import 'package:flutter/material.dart';
import 'package:flutter_notebook_17th/ep1036_furniture_app/src/provider/furniture_menu_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FurnitureMainPage extends ConsumerWidget {
  const FurnitureMainPage({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final menuIndex = ref.watch(furnitureMenuProvider);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Placeholder(),
              flex: 20,
            ),
            Divider(
              height: 0,
              color: Colors.grey,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: IconButton(
                        iconSize: 32,
                    icon: Icon(Icons.home_outlined),
                    color: menuIndex == FurnitureMenu.home ? Colors.indigoAccent : Colors.black,
                    onPressed: () {},
                  )),
                  Expanded(
                      child: IconButton(
                        iconSize: 32,
                        icon: Icon(Icons.favorite_border),
                        color: menuIndex == FurnitureMenu.favorite ? Colors.indigoAccent : Colors.black,
                        onPressed: () {},
                      )),
                  Expanded(
                      child: IconButton(
                        iconSize: 32,
                        icon: Icon(Icons.shopping_bag_outlined),
                        color: menuIndex == FurnitureMenu.favorite ? Colors.indigoAccent : Colors.black,
                        onPressed: () {},
                      )),
                  Expanded(
                      child: IconButton(
                        iconSize: 32,
                        icon: Icon(Icons.person_outlined),
                        color: menuIndex == FurnitureMenu.favorite ? Colors.indigoAccent : Colors.black,
                        onPressed: () {},
                      )),
                ],
              ),
              flex: 2,
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
