import 'package:flutter/material.dart';
import 'package:flutter_notebook_17th/ep1040_flight_booking_app/src/flight_home_page.dart';


class FlightBookingApp extends StatelessWidget {
  const FlightBookingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FlightHomePage(),
    );
  }
}
