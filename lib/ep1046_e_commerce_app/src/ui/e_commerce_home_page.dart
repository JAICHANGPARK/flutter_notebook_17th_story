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
            panel: Container(),
            body: CachedNetworkImage(
              imageUrl: 'https://cdn.pixabay.com/photo/2016/02/10/16/39/girl-1192032__340.jpg',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
