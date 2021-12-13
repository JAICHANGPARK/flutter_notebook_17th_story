import 'package:flutter/material.dart';


class NftMainPage extends StatefulWidget {
  const NftMainPage({Key? key}) : super(key: key);

  @override
  _NftMainPageState createState() => _NftMainPageState();
}

class _NftMainPageState extends State<NftMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: ,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      ],
      ),
    );
  }
}
