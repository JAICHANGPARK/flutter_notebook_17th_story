import 'package:flutter/material.dart';
import 'package:flutter_notebook_17th/ep1011_vehicle_retailer_app/src/vehicle_main_page.dart';

class VehicleRetailerApp extends StatelessWidget {
  const VehicleRetailerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: VehicleMainPage(),
    );
  }
}
