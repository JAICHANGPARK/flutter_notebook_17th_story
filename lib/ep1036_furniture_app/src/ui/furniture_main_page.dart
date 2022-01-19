import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_17th/ep1036_furniture_app/src/provider/furniture_cart_provider.dart';
import 'package:flutter_notebook_17th/ep1036_furniture_app/src/provider/furniture_menu_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FurnitureMainPage extends ConsumerWidget {
  const FurnitureMainPage({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final menuIndex = ref.watch(furnitureMenuProvider);
    final cartItems = ref.watch(furnitureCartProvider);
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
                  Expanded(
                      child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 140,
                              width: 160,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image: CachedNetworkImageProvider("${cartItems[index].img}"),
                                  fit: BoxFit.cover,
                                ),

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${cartItems[index].title}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16
                                    ),
                                  ),
                                  Text(
                                    "${cartItems[index].subtitle}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,

                                    ),
                                  ),
                                  Text(
                                    "Color: ${cartItems[index].color}",
                                  ),
                                  Text(
                                    "${cartItems[index].price} \$",
                                  ),
                                  Row(

                                    children: [
                                      CircleAvatar(),
                                      Expanded(child: Text(""),),
                                      CircleAvatar(),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    itemCount: ref.read(furnitureCartProvider).length,
                  )),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Discount"),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 52,
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          child: Row(
                            children: [
                              const Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Add Promo Code",
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                                child: const Text("Apply"),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Subtotal"),
                            Text("498\$"),
                          ],
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Shipping"),
                            Text("19\$"),
                          ],
                        ),
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
