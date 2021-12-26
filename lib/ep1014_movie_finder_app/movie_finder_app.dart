import 'package:flutter/material.dart';
import 'package:flutter_notebook_17th/ep1014_movie_finder_app/src/movie_finder_home_page.dart';


class MovieFinderApp extends StatelessWidget {
  const MovieFinderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/":(context)=> MovieFinderHomePage(),
      },
    );
  }
}
