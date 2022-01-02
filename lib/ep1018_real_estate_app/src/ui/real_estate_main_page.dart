import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class RealEstateMainPage extends StatefulWidget {
  const RealEstateMainPage({Key? key}) : super(key: key);

  @override
  _RealEstateMainPageState createState() => _RealEstateMainPageState();
}

class _RealEstateMainPageState extends State<RealEstateMainPage> {
  int _menuIndex = 0;
  ValueNotifier<int> _tabIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(19, 20, 22, 1),
      body: SafeArea(
        child: IndexedStack(
          index: _menuIndex,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 72,
                    // decoration: const BoxDecoration(color: Colors.blue),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  "You're located here",
                                  style: TextStyle(color: Colors.grey, fontSize: 12),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.white,
                                ),
                                Text(
                                  "London",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          height: 54,
                          width: 54,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 0.8),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.search,
                            size: 32,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 62,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromRGBO(32, 41, 50, 1),
                          Color.fromRGBO(32, 41, 50, 1),
                          Color.fromRGBO(26, 29, 34, 1),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                            child: ValueListenableBuilder(
                          valueListenable: _tabIndex,
                          builder: (context, value, _) {
                            return GestureDetector(
                              onTap: () {
                                _tabIndex.value = 0;
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: value == 0 ? const Color.fromRGBO(39, 97, 255, 1) : Colors.transparent,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Rent",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        )),
                        Expanded(
                            child: ValueListenableBuilder(
                          valueListenable: _tabIndex,
                          builder: (context, value, _) {
                            return GestureDetector(
                              onTap: () {
                                _tabIndex.value = 1;
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: value == 1 ? const Color.fromRGBO(39, 97, 255, 1) : Colors.transparent,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Buy",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        )),
                        Expanded(
                            child: ValueListenableBuilder(
                          valueListenable: _tabIndex,
                          builder: (context, value, _) {
                            return GestureDetector(
                              onTap: () {
                                _tabIndex.value = 2;
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: value == 2 ? const Color.fromRGBO(39, 97, 255, 1) : Colors.transparent,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Sell",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        )),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Newly Added",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      // color: Colors.pink,
                      child: ListView.builder(
                          itemCount: 3,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: Container(
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                    color: const Color.fromRGBO(29, 36, 44, 1), borderRadius: BorderRadius.circular(8)),
                                width: 280,
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 10,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.blueAccent,
                                          borderRadius: BorderRadius.circular(12),
                                          image: const DecorationImage(
                                            image: const CachedNetworkImageProvider(
                                              "https://cdn.pixabay.com/photo/2016/11/18/17/46/house-1836070_960_720.jpg",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              right: 16,
                                              top: 16,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.black26, borderRadius: BorderRadius.circular(12)),
                                                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                                                child: Row(
                                                  children: const [
                                                    Text("📌"),
                                                    SizedBox(
                                                      width: 4,
                                                    ),
                                                    Text(
                                                      "Maps",
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.white,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            height: 16,
                                          ),
                                          const Text(
                                            "Roundy Lane",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.symmetric(vertical: 16.0),
                                            child: Text("8 Room villa - 4350 Sqft"),
                                          ),
                                          const Spacer(),
                                          Row(
                                            children: [
                                              Container(
                                                // width: 140,
                                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(8),
                                                    color: const Color.fromRGBO(39, 97, 255, 1)),
                                                child: Row(
                                                  children: const [
                                                    Text(
                                                      "\$",
                                                      style: TextStyle(color: Colors.white, fontSize: 10),
                                                    ),
                                                    Text(
                                                      "2899",
                                                      style: TextStyle(color: Colors.white, fontSize: 18),
                                                    ),
                                                    SizedBox(
                                                      width: 12,
                                                    ),
                                                    Text(
                                                      "For Month",
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.grey,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              const Spacer(),
                                              IconButton(
                                                onPressed: () {},
                                                icon: const Icon(Icons.star),
                                                color: Colors.yellow,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      flex: 6,
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 72,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [
                        Color.fromRGBO(34, 43, 52, 1),
                        Color.fromRGBO(29, 36, 44, 1),
                        Color.fromRGBO(25, 28, 32, 1),
                      ]),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _menuIndex = 0;
                            });
                          },
                          child: Container(
                            height: 42,
                            width: 42,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: const Color.fromRGBO(20, 22, 25, 1),
                            ),
                            child: Center(
                                child: Icon(
                              _menuIndex == 0 ? Icons.home : Icons.home_outlined,
                              color: _menuIndex == 0 ? const Color.fromRGBO(37, 98, 249, 1) : Colors.grey,
                            )),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _menuIndex = 1;
                            });
                          },
                          child: Container(
                            height: 42,
                            width: 42,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: const Color.fromRGBO(20, 22, 25, 1),
                            ),
                            child: Center(
                                child: Icon(
                              _menuIndex == 1 ? Icons.favorite : Icons.favorite_border,
                              color: _menuIndex == 1 ? const Color.fromRGBO(37, 98, 249, 1) : Colors.grey,
                            )),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _menuIndex = 2;
                            });
                          },
                          child: Container(
                            height: 42,
                            width: 42,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: const Color.fromRGBO(20, 22, 25, 1),
                            ),
                            child: Center(
                                child: Icon(
                              _menuIndex == 2 ? Icons.shopping_basket : Icons.shopping_basket_outlined,
                              color: _menuIndex == 2 ? const Color.fromRGBO(37, 98, 249, 1) : Colors.grey,
                            )),
                          ),
                        ),
                        Container(
                          height: 42,
                          width: 42,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: const Color.fromRGBO(20, 22, 25, 1),
                          ),
                          child: const Center(
                              child: Icon(
                            Icons.person_outlined,
                            color: Colors.grey,
                          )),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 72,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                    Color.fromRGBO(34, 43, 52, 1),
                    Color.fromRGBO(29, 36, 44, 1),
                    Color.fromRGBO(25, 28, 32, 1),
                  ]),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _menuIndex = 0;
                        });
                      },
                      child: Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color.fromRGBO(20, 22, 25, 1),
                        ),
                        child: Center(
                            child: Icon(
                          _menuIndex == 0 ? Icons.home : Icons.home_outlined,
                          color: _menuIndex == 0 ? const Color.fromRGBO(37, 98, 249, 1) : Colors.grey,
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _menuIndex = 1;
                        });
                      },
                      child: Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color.fromRGBO(20, 22, 25, 1),
                        ),
                        child: Center(
                            child: Icon(
                          _menuIndex == 1 ? Icons.favorite : Icons.favorite_border,
                          color: _menuIndex == 1 ? const Color.fromRGBO(37, 98, 249, 1) : Colors.grey,
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _menuIndex = 2;
                        });
                      },
                      child: Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color.fromRGBO(20, 22, 25, 1),
                        ),
                        child: Center(
                            child: Icon(
                          _menuIndex == 2 ? Icons.shopping_basket : Icons.shopping_basket_outlined,
                          color: _menuIndex == 2 ? const Color.fromRGBO(37, 98, 249, 1) : Colors.grey,
                        )),
                      ),
                    ),
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: const Color.fromRGBO(20, 22, 25, 1),
                      ),
                      child: const Center(
                          child: Icon(
                        Icons.person_outlined,
                        color: Colors.grey,
                      )),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 72,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                    Color.fromRGBO(34, 43, 52, 1),
                    Color.fromRGBO(29, 36, 44, 1),
                    Color.fromRGBO(25, 28, 32, 1),
                  ]),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _menuIndex = 0;
                        });
                      },
                      child: Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color.fromRGBO(20, 22, 25, 1),
                        ),
                        child: Center(
                            child: Icon(
                          _menuIndex == 0 ? Icons.home : Icons.home_outlined,
                          color: _menuIndex == 0 ? const Color.fromRGBO(37, 98, 249, 1) : Colors.grey,
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _menuIndex = 1;
                        });
                      },
                      child: Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color.fromRGBO(20, 22, 25, 1),
                        ),
                        child: Center(
                            child: Icon(
                          _menuIndex == 1 ? Icons.favorite : Icons.favorite_border,
                          color: _menuIndex == 1 ? const Color.fromRGBO(37, 98, 249, 1) : Colors.grey,
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _menuIndex = 2;
                        });
                      },
                      child: Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color.fromRGBO(20, 22, 25, 1),
                        ),
                        child: Center(
                            child: Icon(
                          _menuIndex == 2 ? Icons.shopping_basket : Icons.shopping_basket_outlined,
                          color: _menuIndex == 2 ? const Color.fromRGBO(37, 98, 249, 1) : Colors.grey,
                        )),
                      ),
                    ),
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: const Color.fromRGBO(20, 22, 25, 1),
                      ),
                      child: const Center(
                          child: Icon(
                        Icons.person_outlined,
                        color: Colors.grey,
                      )),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 72,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                    Color.fromRGBO(34, 43, 52, 1),
                    Color.fromRGBO(29, 36, 44, 1),
                    Color.fromRGBO(25, 28, 32, 1),
                  ]),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _menuIndex = 0;
                        });
                      },
                      child: Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color.fromRGBO(20, 22, 25, 1),
                        ),
                        child: Center(
                            child: Icon(
                          _menuIndex == 0 ? Icons.home : Icons.home_outlined,
                          color: _menuIndex == 0 ? const Color.fromRGBO(37, 98, 249, 1) : Colors.grey,
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _menuIndex = 1;
                        });
                      },
                      child: Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color.fromRGBO(20, 22, 25, 1),
                        ),
                        child: Center(
                            child: Icon(
                          _menuIndex == 1 ? Icons.favorite : Icons.favorite_border,
                          color: _menuIndex == 1 ? const Color.fromRGBO(37, 98, 249, 1) : Colors.grey,
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _menuIndex = 2;
                        });
                      },
                      child: Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color.fromRGBO(20, 22, 25, 1),
                        ),
                        child: Center(
                            child: Icon(
                          _menuIndex == 2 ? Icons.shopping_basket : Icons.shopping_basket_outlined,
                          color: _menuIndex == 2 ? const Color.fromRGBO(37, 98, 249, 1) : Colors.grey,
                        )),
                      ),
                    ),
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: const Color.fromRGBO(20, 22, 25, 1),
                      ),
                      child: const Center(
                          child: Icon(
                        Icons.person_outlined,
                        color: Colors.grey,
                      )),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
