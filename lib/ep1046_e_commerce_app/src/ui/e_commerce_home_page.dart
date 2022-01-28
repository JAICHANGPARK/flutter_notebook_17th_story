import 'package:cached_network_image/cached_network_image.dart';
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
          maxHeight: MediaQuery.of(context).size.height / 2,
          minHeight: MediaQuery.of(context).size.height / 2,
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
          body: Column(
            children: [
              Expanded(
                child: CachedNetworkImage(
                  imageUrl: 'https://cdn.pixabay.com/photo/2019/12/10/09/06/apple-iphone-11-pro-4685404__340.jpg',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Expanded(child: Container()),
            ],
          ),
          panel: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 8,
                    width: 42,
                    decoration: BoxDecoration(
                      color: Colors.grey
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
