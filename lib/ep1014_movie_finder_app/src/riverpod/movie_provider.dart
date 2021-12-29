import 'package:flutter_notebook_17th/ep1014_movie_finder_app/src/api/movie_api.dart';
import 'package:flutter_notebook_17th/ep1014_movie_finder_app/src/model/movies.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final movieProvider = FutureProvider<Movies?>((ref) async {
  return await getMovies();
});
