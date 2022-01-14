import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_17th/ep1032_medical_app/src/medical_main_page.dart';

class MedicalStartScreen extends StatelessWidget {
  const MedicalStartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(7, 33, 60, 1),
      body: Stack(
        children: [
          Positioned(
              right: -16,
              top: -24,
              child: Container(
                height: 84,
                width: 84,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 8,
                      color: Colors.grey,
                    )),
              )),
          const Positioned(
              right: 100,
              top: 48,
              child: CircleAvatar(
                radius: 16,
              )),
          const Positioned(
              right: 72,
              top: 84,
              child: CircleAvatar(
                radius: 8,
                backgroundColor: Colors.greenAccent,
              )),
          Positioned(
              top: 200,
              left: 32,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Virtual",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color.fromRGBO(0, 219, 167, 1)),
                  ),
                  Text(
                    "Ecosystem",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Specializsed healthcare, on a single tech platform.",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "simplifying access for anyone. anywhere",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              )),
          Positioned(
              right: 0,
              bottom: 100,
              left: 0,
              child: Center(
                child: Container(
                  height: 240,
                  width: 240,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 1,
                        color: Colors.grey,
                      )),
                ),
              )),
          Positioned(
              right: 0,
              bottom: 98,
              left: 12,
              child: Center(
                child: Container(
                  height: 240,
                  width: 240,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 1,
                        color: Colors.grey,
                      )),
                ),
              )),
          Positioned(
              bottom: 160,
              left: 32,
              child: Center(
                child: Container(
                  height: 240,
                  width: 140,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: CachedNetworkImageProvider(
                            "https://cdn.pixabay.com/photo/2017/02/16/23/10/smile-2072907_960_720.jpg"),
                        fit: BoxFit.cover,
                      )),
                ),
              )),
          Positioned(
              bottom: 84,
              right: 32,
              child: Center(
                child: Container(
                  height: 240,
                  width: 140,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: CachedNetworkImageProvider(
                            "https://cdn.pixabay.com/photo/2018/11/08/23/52/man-3803551__340.jpg"),
                        fit: BoxFit.cover,
                      )),
                ),
              )),
          Positioned(
              left: 32,
              bottom: 64,
              child: Row(
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => MedicalMainPage(),
                        ),
                      );
                    },
                    child: const Icon(Icons.arrow_forward),
                    backgroundColor: Colors.greenAccent,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Get",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "started",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
