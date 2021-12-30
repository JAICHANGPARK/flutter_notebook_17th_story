import 'package:flutter/material.dart';
import 'package:flutter_notebook_17th/ep1018_real_estate_app/real_estate_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: RealEstateApp()));
}