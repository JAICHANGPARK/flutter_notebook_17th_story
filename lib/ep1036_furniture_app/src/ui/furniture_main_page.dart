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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(child: Text("Shopping Cart")),
                  ),
                  const Expanded(child: Placeholder()),
                  const Text("Discount"),
                  Container(
                    height: 62,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Text("Apply"),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 16,
                      ),
                      child: const Center(
                        child: Text(
                          "Checkout",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              flex: 20,
            ),
            const Divider(
              height: 0,
              color: Colors.grey,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: IconButton(
                    iconSize: 32,
                    icon: const Icon(Icons.home_outlined),
                    color: menuIndex == FurnitureMenu.home ? Colors.indigoAccent : Colors.black,
                    onPressed: () {
                      ref.read(furnitureMenuProvider.notifier).state = FurnitureMenu.home;
                    },
                  )),
                  Expanded(
                      child: IconButton(
                    iconSize: 32,
                    icon: const Icon(Icons.favorite_border),
                    color: menuIndex == FurnitureMenu.favorite ? Colors.indigoAccent : Colors.black,
                    onPressed: () {
                      ref.read(furnitureMenuProvider.notifier).state = FurnitureMenu.favorite;
                    },
                  )),
                  Expanded(
                      child: IconButton(
                    iconSize: 32,
                    icon: const Icon(Icons.shopping_bag_outlined),
                    color: menuIndex == FurnitureMenu.cart ? Colors.indigoAccent : Colors.black,
                    onPressed: () {
                      ref.read(furnitureMenuProvider.notifier).state = FurnitureMenu.cart;
                    },
                  )),
                  Expanded(
                      child: IconButton(
                    iconSize: 32,
                    icon: const Icon(Icons.person_outlined),
                    color: menuIndex == FurnitureMenu.profile ? Colors.indigoAccent : Colors.black,
                    onPressed: () {
                      ref.read(furnitureMenuProvider.notifier).state = FurnitureMenu.profile;
                    },
                  )),
                ],
              ),
              flex: 2,
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
