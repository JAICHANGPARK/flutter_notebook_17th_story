import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FinanceHomeComponent extends StatelessWidget {
  const FinanceHomeComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Hi, Dreamwalker",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Welcome to Mumet",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blueAccent[100],
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(1),
                  child: const CircleAvatar(
                    radius: 24,
                    backgroundImage: CachedNetworkImageProvider(
                        "https://cdn.pixabay.com/photo/2017/04/06/19/34/girl-2209147__340.jpg"),
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
