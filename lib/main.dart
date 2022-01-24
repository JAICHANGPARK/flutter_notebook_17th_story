import 'package:flutter/material.dart';
import 'package:flutter_notebook_17th/ep1043_small_talk_app/small_talk_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: SmallTalkApp(),
    ),
  );
}
