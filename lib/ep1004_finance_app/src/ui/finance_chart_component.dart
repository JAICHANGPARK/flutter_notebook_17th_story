import 'package:flutter/material.dart';
import 'package:flutter_notebook_17th/ep1004_finance_app/src/ui/finance_home_page.dart';

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
            padding: EdgeInsets.all(8.0),
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
              child: Column(
                children: [
                  Container(
                    height: 64,
                  ),
                  Expanded(child: Placeholder()),
                  Row(
                    children: [
                      CircleAvatar(backgroundColor: Colors.white.withOpacity(0.5),radius: 10,),
                      Text("INCOME"),
                      CircleAvatar(backgroundColor: Colors.black26,radius: 10,),
                      Text("INCOME"),
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
