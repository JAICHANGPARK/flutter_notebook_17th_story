import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_17th/ep1046_e_commerce_app/src/model/case_size.dart';
import 'package:flutter_notebook_17th/ep1046_e_commerce_app/src/provider/case_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

List<CaseSize> sizeItems = [
  CaseSize(false, "XS"),
  CaseSize(false, "XE"),
  CaseSize(false, "11"),
  CaseSize(false, "SE"),
  CaseSize(false, "12"),
  CaseSize(false, "13"),
];

class ECommerceHomePage extends StatelessWidget {
  const ECommerceHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SlidingUpPanel(
          isDraggable: false,
          maxHeight: MediaQuery.of(context).size.height / 2.2,
          minHeight: MediaQuery.of(context).size.height / 2.2,
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
          body: Column(
            children: [
              Expanded(
                flex: 4,
                child: CachedNetworkImage(
                  imageUrl: 'https://cdn.pixabay.com/photo/2019/12/10/09/06/apple-iphone-11-pro-4685404__340.jpg',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Expanded(flex: 3, child: Container()),
            ],
          ),
          panel: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 8,
                    width: 52,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 32,
                          foregroundColor: Colors.black,
                          child: const Text(
                            "\$68",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "PP-0008",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text("Free Shipping")
                            ],
                          ),
                        ),
                        const Spacer(),
                        IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Text("Montreal-based foundry, Pangram\nPangram*, has been a disrupter in the\n"
                        "typography world since 2016."),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: SizedBox(
                        height: 52,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: sizeItems.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: GestureDetector(
                                onTap: () {
                                  for (int i = 0; i < sizeItems.length; i++) {
                                    sizeItems[index].isSelect = false;
                                  }
                                  sizeItems[index].isSelect = true;
                                },
                                child: CircleAvatar(
                                  child: Text(sizeItems[index].size ?? "12"),
                                  radius: 28,
                                  foregroundColor: Colors.black,
                                  backgroundColor: Colors.grey[200],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Consumer(
                  builder: (BuildContext context, WidgetRef ref, Widget? child) {
                    final cnt = ref.watch(caseCountProvider);
                    return Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            int _cnt = cnt;
                            _cnt--;
                            if (_cnt < 1) {
                              _cnt = 1;
                            }
                            ref.read(caseCountProvider.notifier).state = _cnt;
                          },
                          child: const CircleAvatar(
                            backgroundColor: Colors.orange,
                            foregroundColor: Colors.black,
                            child: Icon(Icons.remove),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "${cnt < 10 ? "0" : ""}$cnt",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            int _cnt = cnt;
                            _cnt++;
                            if(_cnt > 99){
                              _cnt = 99;
                            }

                            ref.read(caseCountProvider.notifier).state = _cnt;
                          },
                          child: const CircleAvatar(
                            backgroundColor: Colors.orange,
                            foregroundColor: Colors.black,
                            child: Icon(Icons.add),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(32)),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: const Center(
                              child: Text(
                                "Add to cart",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
