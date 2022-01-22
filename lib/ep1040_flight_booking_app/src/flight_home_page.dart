import 'package:flutter/material.dart';

class FlightHomePage extends StatefulWidget {
  const FlightHomePage({Key? key}) : super(key: key);

  @override
  _FlightHomePageState createState() => _FlightHomePageState();
}

class _FlightHomePageState extends State<FlightHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text("e Flights"),
        foregroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined),
          )
        ],
      ),
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            Expanded(
              flex: 19,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 54,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: Colors.black,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.indigo[400]!,
                            offset: const Offset(5, 5),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      child: Row(
                        children: [
                          const Expanded(
                              child: Center(
                            child: Text(
                              "One Way",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )),
                          Expanded(
                              child: Container(
                            decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
                            child: const Center(
                              child: Text(
                                "Round To",
                                style: TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
                              ),
                            ),
                          )),
                          const Expanded(
                              child: Center(
                            child: Text(
                              "Multi-City",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 200,
                      child: Stack(
                        children: [
                          Positioned(
                              left: 0,
                              top: 0,
                              right: 0,
                              bottom: 0,
                              child: Column(
                                children: [
                                  Expanded(
                                      child: TextField(
                                    decoration: InputDecoration(
                                      // icon: Icon(Icons.flight_takeoff_outlined),
                                      // suffixIcon: Icon(Icons.flight_takeoff_outlined),
                                      prefixIcon: const Icon(Icons.flight_takeoff_outlined),
                                      hintText: "From",
                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(width: 5, color: Colors.black),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  )),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                   Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          // icon: Icon(Icons.flight_takeoff_outlined),
                                          // suffixIcon: Icon(Icons.flight_takeoff_outlined),
                                          prefixIcon: const Icon(Icons.flight_land_outlined),
                                          hintText: "To",
                                          border: OutlineInputBorder(
                                            borderSide: const BorderSide(width: 5, color: Colors.black),
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                        ),
                                  )),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Expanded(
                                      child: Row(
                                    children: [
                                       Expanded(
                                          child: TextField(
                                            decoration: InputDecoration(
                                              // icon: Icon(Icons.flight_takeoff_outlined),
                                              // suffixIcon: Icon(Icons.flight_takeoff_outlined),
                                              prefixIcon: const Icon(Icons.calendar_month_outlined),
                                              hintText: "Date",
                                              border: OutlineInputBorder(
                                                borderSide: const BorderSide(width: 5, color: Colors.black),
                                                borderRadius: BorderRadius.circular(12),
                                              ),
                                            ),
                                      )),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                       Expanded(
                                          child: TextField(
                                            decoration: InputDecoration(
                                              // icon: Icon(Icons.flight_takeoff_outlined),
                                              // suffixIcon: Icon(Icons.flight_takeoff_outlined),
                                              prefixIcon: const Icon(Icons.calendar_month_outlined),
                                              hintText: "Date",
                                              border: OutlineInputBorder(
                                                borderSide: const BorderSide(width: 5, color: Colors.black),
                                                borderRadius: BorderRadius.circular(12),
                                              ),
                                            ),
                                      )),
                                    ],
                                  )),
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                        height: 64,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.deepOrangeAccent,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Center(
                          child: Text(
                            "Search Flights",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24))),
                child: Row(
                  children: const [],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
