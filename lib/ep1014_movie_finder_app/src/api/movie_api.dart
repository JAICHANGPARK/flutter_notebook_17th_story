import 'package:http/http.dart' as http;

Future getMovies() async {
  print("call getMovies()");
  var response = await http.get(Uri.parse("https://yts.mx/api/v2/list_movies.json"));
  if (response.statusCode == 200) {
    print(response.body);
  } else {
    print(response.statusCode);
  }
}
