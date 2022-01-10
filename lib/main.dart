import 'package:flutter/material.dart';
import 'package:flutter_notebook_17th/ep1029_workouts_app/workouts_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: WorkoutsApp()));
}