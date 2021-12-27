import 'package:flutter/material.dart';

class MovieFinderHomePage extends StatelessWidget {
  const MovieFinderHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16, left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Find movies like",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 52,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey[300]!,
                    ),
                    borderRadius: BorderRadius.circular(24)),
              ),
              SizedBox(
                height: 24,
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("❤ For you"),
                    SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                      height: 160,
                      child: Container(
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text("🔥 Popular movies"),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: GridView.builder(
                        itemCount: 10,
                        shrinkWrap: true,

                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
                        childAspectRatio: 6/8),
                        itemBuilder: (context, index) {
                          return Card();
                        },
                      ),
                    )
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
