import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ECommerceHomePage extends StatelessWidget {
  const ECommerceHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SlidingUpPanel(
          isDraggable: false,
          maxHeight: MediaQuery.of(context).size.height / 3,
          minHeight: MediaQuery.of(context).size.height / 3,
          panel: Container(),
          body: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
