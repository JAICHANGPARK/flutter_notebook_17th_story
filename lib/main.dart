import 'package:flutter/material.dart';
import 'package:flutter_notebook_17th/ep1025_bulletin_news_app/bullentin_news_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: BulletinNewsApp()));
}