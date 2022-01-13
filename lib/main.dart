import 'package:flutter/material.dart';
import 'package:flutter_notebook_17th/ep1032_medical_app/medical_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MedicalApp()));
}