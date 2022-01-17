import 'package:flutter/material.dart';
import 'package:flutter_notebook_17th/ep1036_furniture_app/src/provider/furniture_menu_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FurnitureMainPage extends ConsumerWidget {
  const FurnitureMainPage({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final menuIndex = ref.watch(furnitureMenuProvider);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Placeholder(),
            flex: 20,
          ),
          Expanded(
            child: Placeholder(),
            flex: 2,
          )
        ],
      ),
    );
  }
}
