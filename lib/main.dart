import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'ep1014_movie_finder_app/movie_finder_app.dart';

void main() {
  runApp(ProviderScope(child: MovieFinderApp()));
}