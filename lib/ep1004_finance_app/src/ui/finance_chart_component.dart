import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_17th/ep1004_finance_app/src/ui/finance_home_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum ChartDay {
  monthly,
  weekly,
  custom,
}

final chartTabProvider = StateProvider<ChartDay>((ref) => ChartDay.monthly);

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
              child: Text(
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
                    height: 46,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white.withOpacity(0.1),
                    ),
                    padding: const EdgeInsets.all(6),
                    child: Consumer(
                      builder: (context, ref, _) {
                        final tabIndex = ref.watch(chartTabProvider);
                        return Row(
                          children: [
                            Expanded(
                                child: GestureDetector(
                              onTap: () {
                                ref.read(chartTabProvider.notifier).state = ChartDay.monthly;
                              },
                              child: tabIndex == ChartDay.monthly
                                  ? Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Monthly",
                                          style: TextStyle(
                                            color: financeMainColor,
                                          ),
                                        ),
                                      ),
                                    )
                                  : const Center(
                                      child: Text(
                                        "Monthly",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                            )),
                            Expanded(
                                child: GestureDetector(
                              onTap: () {
                                ref.read(chartTabProvider.notifier).state = ChartDay.weekly;
                              },
                              child: tabIndex == ChartDay.weekly
                                  ? Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Weekly",
                                          style: TextStyle(
                                            color: financeMainColor,
                                          ),
                                        ),
                                      ),
                                    )
                                  : const Center(
                                      child: Text(
                                        "Weekly",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                            )),
                            Expanded(
                                child: GestureDetector(
                              onTap: () {
                                ref.read(chartTabProvider.notifier).state = ChartDay.custom;
                              },
                              child: tabIndex == ChartDay.custom
                                  ? Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Custom",
                                          style: TextStyle(
                                            color: financeMainColor,
                                          ),
                                        ),
                                      ),
                                    )
                                  : const Center(
                                      child: Text(
                                        "Custom",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                            )),
                          ],
                        );
                      },
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: BarChart(
                      BarChartData(
                        barGroups: [
                          BarChartGroupData(x: 0, barsSpace: 8, barRods: [
                            BarChartRodData(y: 40, colors: [Colors.white.withOpacity(0.5)]),
                            BarChartRodData(y: 35, colors: [Colors.black26])
                          ]),
                          BarChartGroupData(x: 1, barsSpace: 8, barRods: [
                            BarChartRodData(y: 40, colors: [Colors.white.withOpacity(0.5)]),
                            BarChartRodData(y: 45, colors: [Colors.black26])
                          ]),
                          BarChartGroupData(x: 2, barsSpace: 8, barRods: [
                            BarChartRodData(y: 40, colors: [Colors.white.withOpacity(0.5)]),
                            BarChartRodData(y: 35, colors: [Colors.black26])
                          ]),
                          BarChartGroupData(x: 3, barsSpace: 8, barRods: [
                            BarChartRodData(y: 20, colors: [Colors.white.withOpacity(0.5)]),
                            BarChartRodData(y: 36, colors: [Colors.black26])
                          ]),
                          BarChartGroupData(x: 4, barsSpace: 8, barRods: [
                            BarChartRodData(y: 30, colors: [Colors.white.withOpacity(0.5)]),
                            BarChartRodData(y: 40, colors: [Colors.black26])
                          ]),
                          BarChartGroupData(x: 5, barsSpace: 8, barRods: [
                            BarChartRodData(y: 30, colors: [Colors.white.withOpacity(0.5)]),
                            BarChartRodData(y: 28, colors: [Colors.black26])
                          ])
                        ],
                        gridData: FlGridData(
                          show: false,
                        ),
                        axisTitleData: FlAxisTitleData(
                          topTitle: AxisTitle(
                            showTitle: false,
                          )
                        )
                      ),
                    ),
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
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 92,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.grey[300]!,
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Container(
                    height: 36,
                    width: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.orange[50],
                    ),
                    child: const Icon(
                      Icons.account_balance_wallet,
                      color: Colors.orange,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Cash Balance",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "IDR 20.000.000",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_right),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
