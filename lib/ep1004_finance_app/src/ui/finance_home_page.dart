import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final btmTapProvider = StateProvider((ref) => 0);

class FinanceHomePage extends ConsumerStatefulWidget {
  const FinanceHomePage({Key? key}) : super(key: key);

  @override
  _FinanceHomePageState createState() => _FinanceHomePageState();
}

class _FinanceHomePageState extends ConsumerState<FinanceHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [],
      ),
      bottomNavigationBar: Consumer(
        builder: (context, ref, _) {
          final index = ref.watch(btmTapProvider);
          return BottomNavigationBar(
            showUnselectedLabels: false,
            showSelectedLabels: false,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            ],
          );
        },
      ),
    );
  }
}
