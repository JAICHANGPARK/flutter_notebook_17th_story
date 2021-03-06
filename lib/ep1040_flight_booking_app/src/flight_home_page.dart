import 'package:cached_network_image/cached_network_image.dart';
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
      resizeToAvoidBottomInset: false,
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
                                      borderSide: const BorderSide(width: 1.5, color: Colors.black),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    disabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 1.5, color: Colors.black),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 1.5, color: Colors.black),
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
                                      borderSide: const BorderSide(width: 1.5, color: Colors.black),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    disabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 1.5, color: Colors.black),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 1.5, color: Colors.black),
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
                                          borderSide: const BorderSide(width: 1.5, color: Colors.black),
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        disabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(width: 1.5, color: Colors.black),
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(width: 1.5, color: Colors.black),
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                      ),
                                      onTap: () async {
                                        await showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime.now(),
                                          lastDate: DateTime.now(),
                                        );
                                      },
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
                                          borderSide: const BorderSide(width: 1.5, color: Colors.black),
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        disabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(width: 1.5, color: Colors.black),
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(width: 1.5, color: Colors.black),
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                      ),
                                      onTap: () async {
                                        await showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime.now(),
                                          lastDate: DateTime.now(),
                                        );
                                      },
                                    )),
                                  ],
                                )),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 42,
                            right: 16,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.blueGrey[50],
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.black),
                              ),
                              child: const Center(
                                child: Icon(Icons.import_export),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SizedBox(
                      height: 68,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 4,
                            top: 4,
                            right: 0,
                            bottom: 0,
                            child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
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
                          Positioned(
                            left: 0,
                            top: 0,
                            right: 6,
                            bottom: 4,
                            child: Container(
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
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Your recent searches",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          height: 120,
                          child: ListView.builder(
                            itemCount: 4,
                            itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.fromLTRB(0, 8, 16, 8),
                              child: Container(
                                width: 280,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 100,
                                      decoration:  BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(8),
                                          image: const DecorationImage(
                                            image: CachedNetworkImageProvider(
                                              "https://cdn.pixabay.com/photo/2014/11/13/23/34/palace-530055__480.jpg",
                                            ),
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: const [
                                          Text(
                                            "United States - UK",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "2 Filters",
                                            style: TextStyle(color: Colors.grey, fontSize: 10),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                      ],
                    ),
                  )),
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
