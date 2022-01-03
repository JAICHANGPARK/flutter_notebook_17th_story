import 'package:flutter/material.dart';

class AlphanectMainPage extends StatelessWidget {
  const AlphanectMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.menu),
                  color: Colors.grey,
                ),
                Icon(Icons.camera, color: Colors.blueAccent,),
                Text("Whitelabel",style: TextStyle(
                  color: Colors.blueAccent,
                ),),
                IconButton(onPressed: (){}, icon: Icon(Icons.))
              ],
            )
          ],
        ),
      ),
    );
  }
}
