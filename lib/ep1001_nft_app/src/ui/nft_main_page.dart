import 'package:flutter/material.dart';
import 'package:flutter_notebook_17th/ep1001_nft_app/src/provider/nft_btm_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ionicons/ionicons.dart';

class NftMainPage extends ConsumerWidget {
  const NftMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
                      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.blue[100],
                            child: const Icon(
                              Ionicons.logo_bitcoin,
                              color: Colors.indigoAccent,
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          const Text(
                            "32.06 ETH",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 14,
                        backgroundColor: Colors.red[100],
                        foregroundColor: Colors.red,
                        child: const Text(
                          "AL",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: const Text(
                  "Hot Bids 🔥",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  top: 0,
                ),
                child: SizedBox(
                  height: 320,
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 240,
                          color: Colors.white,
                        );
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    const Text(
                      "Top Collections",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      "View All",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 320,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: ref.watch(nftBottomProvider),
        onTap: (idx) {
          ref.read(nftBottomProvider.notifier).state = idx;
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.blueGrey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.insert_chart_outlined), label: "Statistic"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "More"),
        ],
      ),
    );
  }
}
