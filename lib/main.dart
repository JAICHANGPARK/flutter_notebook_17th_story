import 'package:flutter/material.dart';
import 'package:flutter_notebook_17th/ep1046_e_commerce_app/e_commerce_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: ECommerceApp(),
    ),
  );
}
