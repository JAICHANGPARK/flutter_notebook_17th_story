import 'package:flutter/material.dart';
import 'package:flutter_notebook_17th/ep1001_nft_app/src/provider/nft_btm_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NftMainPage extends ConsumerWidget {
  const NftMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: ref.read(nftBottomProvider),
        onTap: (idx) {
          ref.read(nftBottomProvider.notifier).state = idx;
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.insert_chart_outlined), label: "Statistic"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "More"),
        ],
      ),
    );
  }
}
