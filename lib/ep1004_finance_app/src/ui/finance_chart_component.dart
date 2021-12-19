import 'package:flutter/material.dart';
import 'package:flutter_notebook_17th/ep1004_finance_app/src/ui/finance_home_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum ChartDay {
  monthly,
  weekly,
  custom,
}

final chartTabProvider = StateProvider((ref) => ChartDay.monthly);

class FinanceChartComponent extends StatefulWidget {
  const FinanceChartComponent({Key? key}) : super(key: key);

  @override
  _FinanceChartComponentState createState() => _FinanceChartComponentState();
}

class _FinanceChartComponentState extends State<FinanceChartComponent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 16),
            child: Align(
              alignment: Alignment.center,
              child: const Text(
                "Analysis",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 380,
              decoration: BoxDecoration(
                color: financeMainColor,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Container(
                    height: 52,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white.withOpacity(0.2),
                    ),
                    child: Consumer(
                        builder: (context, ref, _){
                          return Row(
                            children: [
                              Expanded(child: Placeholder()),
                              Expanded(child: Placeholder()),
                              Expanded(child: Placeholder()),
                            ],
                          );
                        },
                        ),
                  ),
                  const Expanded(
                      child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Placeholder(),
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white.withOpacity(0.5),
                        radius: 6,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        "INCOME",
                        style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 12),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      const CircleAvatar(
                        backgroundColor: Colors.black26,
                        radius: 6,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        "OUTCOME",
                        style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 12),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
