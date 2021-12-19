import 'package:flutter/material.dart';

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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Analysis",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
