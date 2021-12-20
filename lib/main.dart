import 'package:flutter/material.dart';
import 'package:flutter_notebook_17th/ep1011_vehicle_retailer_app/vehicle_retailer_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: VehicleRetailerApp()));
}