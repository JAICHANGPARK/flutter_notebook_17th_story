import 'package:flutter_notebook_17th/ep1014_movie_finder_app/src/model/movies.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future getMovies() async {
  print("call getMovies()");
  var response = await http.get(Uri.parse("https://yts.mx/api/v2/list_movies.json"));
  if (response.statusCode == 200) {
    print(response.body);
    Movies movies = Movies.fromJson(json.decode(response.body));
    print(movies.status);
    print(movies.statusMessage);
    print(movies.data?.length);
  } else {
    print(response.statusCode);
  }
}
