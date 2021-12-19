import 'package:flutter/material.dart';
import 'package:flutter_notebook_17th/ep1004_finance_app/src/ui/finance_chart_component.dart';
import 'package:flutter_notebook_17th/ep1004_finance_app/src/ui/finance_home_component.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final btmTapProvider = StateProvider((ref) => 0);

Color financeMainColor = const Color(0xff3859e1);

class FinanceHomePage extends ConsumerStatefulWidget {
  const FinanceHomePage({Key? key}) : super(key: key);

  @override
  _FinanceHomePageState createState() => _FinanceHomePageState();
}

class _FinanceHomePageState extends ConsumerState<FinanceHomePage> {
  /// 56 89 225
  /// 38 59 e1
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, _) {
          final pageIndex = ref.watch(btmTapProvider);
          switch (pageIndex) {
            case 0:
              return const FinanceHomeComponent();
            case 1:
              return const Center(
                child: Text("Page 1"),
              );
            case 2:
              return const Center(
                child: Text("Page 2"),
              );
            case 3:
              return const Center(
                child:FinanceChartComponent(),
              );
          }
          return Column(
            children: [],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        foregroundColor: Colors.white,
        backgroundColor: financeMainColor,
        onPressed: () {},
      ),
      bottomNavigationBar: Consumer(
        builder: (context, ref, _) {
          final index = ref.watch(btmTapProvider);
          return BottomNavigationBar(
            showUnselectedLabels: false,
            showSelectedLabels: false,
            type: BottomNavigationBarType.fixed,
            currentIndex: index,
            selectedItemColor: const Color(0xff3859e1),
            onTap: (idx) {
              ref.read(btmTapProvider.notifier).state = idx;
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.calculate), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.signal_cellular_alt), label: ""),
            ],
          );
        },
      ),
    );
  }
}
