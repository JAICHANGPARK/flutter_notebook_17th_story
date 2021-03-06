import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies.freezed.dart';

part 'movies.g.dart';

@freezed
class Movie with _$Movie {
  factory Movie({
    int? id,
    String? url,
    String? title,
    @JsonKey(name: "title_english") String? titleEnglish,
    @JsonKey(name: "title_long") String? titleLong,
    String? slug,
    @JsonKey(name: "background_image") String? backgroundImage,
    @JsonKey(name: "small_cover_image") String? smallCoverImage,
    @JsonKey(name: "medium_cover_image") String? mediumCoverImage,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}

@freezed
class MovieDatas with _$MovieDatas {
  factory MovieDatas({
    @JsonKey(name: "movie_count") int? movieCount,
    @JsonKey(name: "limit") int? limit,
    @JsonKey(name: "page_number") int? pageNumber,
    @JsonKey(name: "movies") List<Movie>? movies,
  }) = _MovieDatas;

  factory MovieDatas.fromJson(Map<String, dynamic> json) => _$MovieDatasFromJson(json);
}

@freezed
class Movies with _$Movies {
  factory Movies({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "status_message") String? statusMessage,
    @JsonKey(name: "data") MovieDatas? data,
  }) = _Movies;

  factory Movies.fromJson(Map<String, dynamic> json) => _$MoviesFromJson(json);
}

///s
/// {
//    "status":"ok",
//    "status_message":"Query was successful",
//    "data":{
//       "movie_count":38030,
//       "limit":20,
//       "page_number":1,
//       "movies":[
//          {
//             "id":38809,
//             "url":"https:\/\/yts.mx\/movies\/jekyll-and-hyde-2021",
//             "imdb_code":"tt15321376",
//             "title":"Jekyll and Hyde",
//             "title_english":"Jekyll and Hyde",
//             "title_long":"Jekyll and Hyde (2021)",
//             "slug":"jekyll-and-hyde-2021",
//             "year":2021,
//             "rating":0,
//             "runtime":85,
//             "genres":[
//                "Mystery"
//             ],
//             "summary":"When his close friend Dr Henry Jekyll is accused of a horrific murder, lawyer Gabriel Utterson launches his own investigation, only to discover a secret more shocking than he could have imagined.",
//             "description_full":"When his close friend Dr Henry Jekyll is accused of a horrific murder, lawyer Gabriel Utterson launches his own investigation, only to discover a secret more shocking than he could have imagined.",
//             "synopsis":"When his close friend Dr Henry Jekyll is accused of a horrific murder, lawyer Gabriel Utterson launches his own investigation, only to discover a secret more shocking than he could have imagined.",
//             "yt_trailer_code":"eErJXy_izP0",
//             "language":"en",
//             "mpa_rating":"",
//             "background_image":"https:\/\/yts.mx\/assets\/images\/movies\/jekyll_and_hyde_2021\/background.jpg",
//             "background_image_original":"https:\/\/yts.mx\/assets\/images\/movies\/jekyll_and_hyde_2021\/background.jpg",
//             "small_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/jekyll_and_hyde_2021\/small-cover.jpg",
//             "medium_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/jekyll_and_hyde_2021\/medium-cover.jpg",
//             "large_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/jekyll_and_hyde_2021\/large-cover.jpg",
//             "state":"ok",
//             "torrents":[
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/83CAD1FFB066B025E4A0D833278ADC351AAECC58",
//                   "hash":"83CAD1FFB066B025E4A0D833278ADC351AAECC58",
//                   "quality":"720p",
//                   "type":"web",
//                   "seeds":0,
//                   "peers":0,
//                   "size":"784.11 MB",
//                   "size_bytes":822198927,
//                   "date_uploaded":"2021-12-27 01:44:03",
//                   "date_uploaded_unix":1640565843
//                },
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/6994E78852C34F2EE53B11ABF164916AB5A5C9D5",
//                   "hash":"6994E78852C34F2EE53B11ABF164916AB5A5C9D5",
//                   "quality":"1080p",
//                   "type":"web",
//                   "seeds":0,
//                   "peers":0,
//                   "size":"1.57 GB",
//                   "size_bytes":1685774664,
//                   "date_uploaded":"2021-12-27 02:41:08",
//                   "date_uploaded_unix":1640569268
//                }
//             ],
//             "date_uploaded":"2021-12-27 01:44:03",
//             "date_uploaded_unix":1640565843
//          },
//          {
//             "id":38805,
//             "url":"https:\/\/yts.mx\/movies\/chinese-doctors-2021",
//             "imdb_code":"tt13696296",
//             "title":"Chinese Doctors",
//             "title_english":"Chinese Doctors",
//             "title_long":"Chinese Doctors (2021)",
//             "slug":"chinese-doctors-2021",
//             "year":2021,
//             "rating":4.8,
//             "runtime":129,
//             "genres":[
//                "Drama"
//             ],
//             "summary":"A group of doctors at a hospital in Wuhan, China are the first in the world to deal with a new disease, COVID-19.",
//             "description_full":"A group of doctors at a hospital in Wuhan, China are the first in the world to deal with a new disease, COVID-19.",
//             "synopsis":"A group of doctors at a hospital in Wuhan, China are the first in the world to deal with a new disease, COVID-19.",
//             "yt_trailer_code":"NncdLxzFCPg",
//             "language":"zh",
//             "mpa_rating":"",
//             "background_image":"https:\/\/yts.mx\/assets\/images\/movies\/chinese_doctors_2021\/background.jpg",
//             "background_image_original":"https:\/\/yts.mx\/assets\/images\/movies\/chinese_doctors_2021\/background.jpg",
//             "small_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/chinese_doctors_2021\/small-cover.jpg",
//             "medium_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/chinese_doctors_2021\/medium-cover.jpg",
//             "large_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/chinese_doctors_2021\/large-cover.jpg",
//             "state":"ok",
//             "torrents":[
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/BF8F09E1954ABE73FB23E3723001DC7A50F9C884",
//                   "hash":"BF8F09E1954ABE73FB23E3723001DC7A50F9C884",
//                   "quality":"720p",
//                   "type":"bluray",
//                   "seeds":0,
//                   "peers":0,
//                   "size":"1.15 GB",
//                   "size_bytes":1234803098,
//                   "date_uploaded":"2021-12-27 02:42:16",
//                   "date_uploaded_unix":1640569336
//                },
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/E36EE3CC0A51502C9823CBC3951FF614E1DE9219",
//                   "hash":"E36EE3CC0A51502C9823CBC3951FF614E1DE9219",
//                   "quality":"1080p",
//                   "type":"bluray",
//                   "seeds":0,
//                   "peers":0,
//                   "size":"2.37 GB",
//                   "size_bytes":2544768123,
//                   "date_uploaded":"2021-12-27 05:26:44",
//                   "date_uploaded_unix":1640579204
//                }
//             ],
//             "date_uploaded":"2021-12-27 02:42:16",
//             "date_uploaded_unix":1640569336
//          },
//          {
//             "id":38804,
//             "url":"https:\/\/yts.mx\/movies\/caught-in-time-2020",
//             "imdb_code":"tt9877138",
//             "title":"Caught in Time",
//             "title_english":"Caught in Time",
//             "title_long":"Caught in Time (2020)",
//             "slug":"caught-in-time-2020",
//             "year":2020,
//             "rating":6.1,
//             "runtime":95,
//             "genres":[
//                "Crime",
//                "Drama"
//             ],
//             "summary":"A detective tracks down a gang of criminals ten years after they initially evaded arrest.",
//             "description_full":"A detective tracks down a gang of criminals ten years after they initially evaded arrest.",
//             "synopsis":"A detective tracks down a gang of criminals ten years after they initially evaded arrest.",
//             "yt_trailer_code":"H9_-AC0RlOY",
//             "language":"zh",
//             "mpa_rating":"",
//             "background_image":"https:\/\/yts.mx\/assets\/images\/movies\/caught_in_time_2020\/background.jpg",
//             "background_image_original":"https:\/\/yts.mx\/assets\/images\/movies\/caught_in_time_2020\/background.jpg",
//             "small_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/caught_in_time_2020\/small-cover.jpg",
//             "medium_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/caught_in_time_2020\/medium-cover.jpg",
//             "large_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/caught_in_time_2020\/large-cover.jpg",
//             "state":"ok",
//             "torrents":[
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/C9656819EE8FB34AF1E5BF305D86DF88C36C956C",
//                   "hash":"C9656819EE8FB34AF1E5BF305D86DF88C36C956C",
//                   "quality":"720p",
//                   "type":"bluray",
//                   "seeds":0,
//                   "peers":0,
//                   "size":"866.55 MB",
//                   "size_bytes":908643533,
//                   "date_uploaded":"2021-12-26 23:03:21",
//                   "date_uploaded_unix":1640556201
//                },
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/9B9A3580EA1499C413616ACDDA176BD9D79D1F6F",
//                   "hash":"9B9A3580EA1499C413616ACDDA176BD9D79D1F6F",
//                   "quality":"1080p",
//                   "type":"bluray",
//                   "seeds":0,
//                   "peers":0,
//                   "size":"1.74 GB",
//                   "size_bytes":1868310774,
//                   "date_uploaded":"2021-12-27 01:13:43",
//                   "date_uploaded_unix":1640564023
//                }
//             ],
//             "date_uploaded":"2021-12-26 23:03:21",
//             "date_uploaded_unix":1640556201
//          },
//          {
//             "id":38803,
//             "url":"https:\/\/yts.mx\/movies\/how-to-become-myself-2007",
//             "imdb_code":"tt0991183",
//             "title":"How to Become Myself",
//             "title_english":"How to Become Myself",
//             "title_long":"How to Become Myself (2007)",
//             "slug":"how-to-become-myself-2007",
//             "year":2007,
//             "rating":6.5,
//             "runtime":97,
//             "genres":[
//                "Drama"
//             ],
//             "summary":"Juri secretly admires Kanako, who is popular in their class. Juri is like this even at home, where she acts the part of an ideal daughter for her parents because she wants them to stop fighting every day and be loving to each other again. Meanwhile, for no apparent reason, Kanako finds her position in class suddenly plummeting from that of the popular girl to that of the one everybody ignores.",
//             "description_full":"Juri secretly admires Kanako, who is popular in their class. Juri is like this even at home, where she acts the part of an ideal daughter for her parents because she wants them to stop fighting every day and be loving to each other again. Meanwhile, for no apparent reason, Kanako finds her position in class suddenly plummeting from that of the popular girl to that of the one everybody ignores.",
//             "synopsis":"Juri secretly admires Kanako, who is popular in their class. Juri is like this even at home, where she acts the part of an ideal daughter for her parents because she wants them to stop fighting every day and be loving to each other again. Meanwhile, for no apparent reason, Kanako finds her position in class suddenly plummeting from that of the popular girl to that of the one everybody ignores.",
//             "yt_trailer_code":"",
//             "language":"ja",
//             "mpa_rating":"",
//             "background_image":"https:\/\/yts.mx\/assets\/images\/movies\/how_to_become_myself_2007\/background.jpg",
//             "background_image_original":"https:\/\/yts.mx\/assets\/images\/movies\/how_to_become_myself_2007\/background.jpg",
//             "small_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/how_to_become_myself_2007\/small-cover.jpg",
//             "medium_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/how_to_become_myself_2007\/medium-cover.jpg",
//             "large_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/how_to_become_myself_2007\/large-cover.jpg",
//             "state":"ok",
//             "torrents":[
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/80E6E1F5668DB41695148F082EFC6B79945F090B",
//                   "hash":"80E6E1F5668DB41695148F082EFC6B79945F090B",
//                   "quality":"720p",
//                   "type":"web",
//                   "seeds":0,
//                   "peers":0,
//                   "size":"892.5 MB",
//                   "size_bytes":935854080,
//                   "date_uploaded":"2021-12-26 17:30:10",
//                   "date_uploaded_unix":1640536210
//                },
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/488089F7BFFE98C1C77AD56E78A1BC3853EAB1A0",
//                   "hash":"488089F7BFFE98C1C77AD56E78A1BC3853EAB1A0",
//                   "quality":"1080p",
//                   "type":"web",
//                   "seeds":47,
//                   "peers":20,
//                   "size":"1.62 GB",
//                   "size_bytes":1739461755,
//                   "date_uploaded":"2021-12-26 18:36:03",
//                   "date_uploaded_unix":1640540163
//                }
//             ],
//             "date_uploaded":"2021-12-26 17:30:10",
//             "date_uploaded_unix":1640536210
//          },
//          {
//             "id":38802,
//             "url":"https:\/\/yts.mx\/movies\/writing-around-the-christmas-tree-2021",
//             "imdb_code":"tt14721936",
//             "title":"Writing Around the Christmas Tree",
//             "title_english":"Writing Around the Christmas Tree",
//             "title_long":"Writing Around the Christmas Tree (2021)",
//             "slug":"writing-around-the-christmas-tree-2021",
//             "year":2021,
//             "rating":6,
//             "runtime":0,
//             "genres":[
//                "Drama",
//                "Romance"
//             ],
//             "summary":"When successful novelist Mikaela Leighton decides to revive her deceased mother's annual holiday writer's retreat at her father's snowy chalet in an attempt to cure her writer's block, she soon meets handsome yet opinionated non-fiction writer Levi, and soon a romance ignites between them. \u2014The Ninth House LLC",
//             "description_full":"When successful novelist Mikaela Leighton decides to revive her deceased mother's annual holiday writer's retreat at her father's snowy chalet in an attempt to cure her writer's block, she soon meets handsome yet opinionated non-fiction writer Levi, and soon a romance ignites between them. \u2014The Ninth House LLC",
//             "synopsis":"When successful novelist Mikaela Leighton decides to revive her deceased mother's annual holiday writer's retreat at her father's snowy chalet in an attempt to cure her writer's block, she soon meets handsome yet opinionated non-fiction writer Levi, and soon a romance ignites between them. \u2014The Ninth House LLC",
//             "yt_trailer_code":"arblI4MiLMk",
//             "language":"en",
//             "mpa_rating":"",
//             "background_image":"https:\/\/yts.mx\/assets\/images\/movies\/writing_around_the_christmas_tree_2021\/background.jpg",
//             "background_image_original":"https:\/\/yts.mx\/assets\/images\/movies\/writing_around_the_christmas_tree_2021\/background.jpg",
//             "small_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/writing_around_the_christmas_tree_2021\/small-cover.jpg",
//             "medium_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/writing_around_the_christmas_tree_2021\/medium-cover.jpg",
//             "large_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/writing_around_the_christmas_tree_2021\/large-cover.jpg",
//             "state":"ok",
//             "torrents":[
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/4F1A37133D30F92BF82AAD34D4599793EC4130BE",
//                   "hash":"4F1A37133D30F92BF82AAD34D4599793EC4130BE",
//                   "quality":"720p",
//                   "type":"web",
//                   "seeds":0,
//                   "peers":0,
//                   "size":"816.82 MB",
//                   "size_bytes":856497848,
//                   "date_uploaded":"2021-12-26 20:38:00",
//                   "date_uploaded_unix":1640547480
//                },
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/252AD7F000938449682C615117E0E75C42D6FAE3",
//                   "hash":"252AD7F000938449682C615117E0E75C42D6FAE3",
//                   "quality":"1080p",
//                   "type":"web",
//                   "seeds":84,
//                   "peers":32,
//                   "size":"1.48 GB",
//                   "size_bytes":1589137900,
//                   "date_uploaded":"2021-12-26 21:39:03",
//                   "date_uploaded_unix":1640551143
//                }
//             ],
//             "date_uploaded":"2021-12-26 20:38:00",
//             "date_uploaded_unix":1640547480
//          },
//          {
//             "id":38799,
//             "url":"https:\/\/yts.mx\/movies\/the-girl-in-the-yellow-jumper-2020",
//             "imdb_code":"tt10954526",
//             "title":"The Girl in the Yellow Jumper",
//             "title_english":"The Girl in the Yellow Jumper",
//             "title_long":"The Girl in the Yellow Jumper (2020)",
//             "slug":"the-girl-in-the-yellow-jumper-2020",
//             "year":2020,
//             "rating":7.1,
//             "runtime":81,
//             "genres":[
//                "Thriller"
//             ],
//             "summary":"A man reappears after being kidnapped, but you'd never believe his story.",
//             "description_full":"A man reappears after being kidnapped, but you'd never believe his story.",
//             "synopsis":"A man reappears after being kidnapped, but you'd never believe his story.",
//             "yt_trailer_code":"Cmku47bPXWo",
//             "language":"sw",
//             "mpa_rating":"",
//             "background_image":"https:\/\/yts.mx\/assets\/images\/movies\/the_girl_in_the_yellow_jumper_2020\/background.jpg",
//             "background_image_original":"https:\/\/yts.mx\/assets\/images\/movies\/the_girl_in_the_yellow_jumper_2020\/background.jpg",
//             "small_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/the_girl_in_the_yellow_jumper_2020\/small-cover.jpg",
//             "medium_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/the_girl_in_the_yellow_jumper_2020\/medium-cover.jpg",
//             "large_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/the_girl_in_the_yellow_jumper_2020\/large-cover.jpg",
//             "state":"ok",
//             "torrents":[
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/81E2EF766A3E4FA762B3F944EADD8926AD2458C8",
//                   "hash":"81E2EF766A3E4FA762B3F944EADD8926AD2458C8",
//                   "quality":"720p",
//                   "type":"web",
//                   "seeds":0,
//                   "peers":0,
//                   "size":"742.25 MB",
//                   "size_bytes":778305536,
//                   "date_uploaded":"2021-12-26 17:22:21",
//                   "date_uploaded_unix":1640535741
//                },
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/9B17B9A64A540795EDD55F8E7A87862C3A6CF779",
//                   "hash":"9B17B9A64A540795EDD55F8E7A87862C3A6CF779",
//                   "quality":"1080p",
//                   "type":"web",
//                   "seeds":0,
//                   "peers":0,
//                   "size":"1.49 GB",
//                   "size_bytes":1599875318,
//                   "date_uploaded":"2021-12-26 18:05:46",
//                   "date_uploaded_unix":1640538346
//                }
//             ],
//             "date_uploaded":"2021-12-26 17:22:21",
//             "date_uploaded_unix":1640535741
//          },
//          {
//             "id":38800,
//             "url":"https:\/\/yts.mx\/movies\/the-lady-from-406-2017",
//             "imdb_code":"tt8123638",
//             "title":"The Lady from 406",
//             "title_english":"The Lady from 406",
//             "title_long":"The Lady from 406 (2017)",
//             "slug":"the-lady-from-406-2017",
//             "year":2017,
//             "rating":6.2,
//             "runtime":0,
//             "summary":"",
//             "description_full":"",
//             "synopsis":"",
//             "yt_trailer_code":"",
//             "language":"ko",
//             "mpa_rating":"",
//             "background_image":"https:\/\/yts.mx\/assets\/images\/movies\/the_lady_from_406_2017\/background.jpg",
//             "background_image_original":"https:\/\/yts.mx\/assets\/images\/movies\/the_lady_from_406_2017\/background.jpg",
//             "small_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/the_lady_from_406_2017\/small-cover.jpg",
//             "medium_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/the_lady_from_406_2017\/medium-cover.jpg",
//             "large_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/the_lady_from_406_2017\/large-cover.jpg",
//             "state":"ok",
//             "torrents":[
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/2DFD130800679ABB728A50C9ED8FFCFFEF40582F",
//                   "hash":"2DFD130800679ABB728A50C9ED8FFCFFEF40582F",
//                   "quality":"720p",
//                   "type":"web",
//                   "seeds":43,
//                   "peers":7,
//                   "size":"132.86 MB",
//                   "size_bytes":139313807,
//                   "date_uploaded":"2021-12-26 17:01:09",
//                   "date_uploaded_unix":1640534469
//                },
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/5FBCFC271EC651A8630D0104158FF591B920FD6E",
//                   "hash":"5FBCFC271EC651A8630D0104158FF591B920FD6E",
//                   "quality":"1080p",
//                   "type":"web",
//                   "seeds":0,
//                   "peers":0,
//                   "size":"246.92 MB",
//                   "size_bytes":258914386,
//                   "date_uploaded":"2021-12-26 17:09:42",
//                   "date_uploaded_unix":1640534982
//                }
//             ],
//             "date_uploaded":"2021-12-26 17:01:09",
//             "date_uploaded_unix":1640534469
//          },
//          {
//             "id":38801,
//             "url":"https:\/\/yts.mx\/movies\/that-moment-my-heart-cried-2019",
//             "imdb_code":"tt11363752",
//             "title":"That Moment, My Heart Cried",
//             "title_english":"That Moment, My Heart Cried",
//             "title_long":"That Moment, My Heart Cried (2019)",
//             "slug":"that-moment-my-heart-cried-2019",
//             "year":2019,
//             "rating":2.4,
//             "runtime":115,
//             "genres":[
//                "Drama"
//             ],
//             "summary":"This project, a fusion of poetry, music, and movies, gives birth to a new style of filmmaking, through the work of five directors.",
//             "description_full":"This project, a fusion of poetry, music, and movies, gives birth to a new style of filmmaking, through the work of five directors.",
//             "synopsis":"This project, a fusion of poetry, music, and movies, gives birth to a new style of filmmaking, through the work of five directors.",
//             "yt_trailer_code":"",
//             "language":"ja",
//             "mpa_rating":"",
//             "background_image":"https:\/\/yts.mx\/assets\/images\/movies\/that_moment_my_heart_cried_2019\/background.jpg",
//             "background_image_original":"https:\/\/yts.mx\/assets\/images\/movies\/that_moment_my_heart_cried_2019\/background.jpg",
//             "small_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/that_moment_my_heart_cried_2019\/small-cover.jpg",
//             "medium_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/that_moment_my_heart_cried_2019\/medium-cover.jpg",
//             "large_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/that_moment_my_heart_cried_2019\/large-cover.jpg",
//             "state":"ok",
//             "torrents":[
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/EE1ACEB9DD948482344FCB412AC86B049D72B337",
//                   "hash":"EE1ACEB9DD948482344FCB412AC86B049D72B337",
//                   "quality":"720p",
//                   "type":"web",
//                   "seeds":0,
//                   "peers":0,
//                   "size":"1.03 GB",
//                   "size_bytes":1105954079,
//                   "date_uploaded":"2021-12-26 17:38:33",
//                   "date_uploaded_unix":1640536713
//                },
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/18E6C98C799E96E249C32E7B1C264D542F68DE80",
//                   "hash":"18E6C98C799E96E249C32E7B1C264D542F68DE80",
//                   "quality":"1080p",
//                   "type":"web",
//                   "seeds":37,
//                   "peers":10,
//                   "size":"2.12 GB",
//                   "size_bytes":2276332667,
//                   "date_uploaded":"2021-12-26 18:46:50",
//                   "date_uploaded_unix":1640540810
//                }
//             ],
//             "date_uploaded":"2021-12-26 17:38:33",
//             "date_uploaded_unix":1640536713
//          },
//          {
//             "id":38798,
//             "url":"https:\/\/yts.mx\/movies\/alls-faire-in-love-2009",
//             "imdb_code":"tt1034090",
//             "title":"All's Faire in Love",
//             "title_english":"All's Faire in Love",
//             "title_long":"All's Faire in Love (2009)",
//             "slug":"alls-faire-in-love-2009",
//             "year":2009,
//             "rating":5,
//             "runtime":104,
//             "genres":[
//                "Comedy"
//             ],
//             "summary":"Two rival Medieval shows vie for supremacy in the world of Renaissance Faires.",
//             "description_full":"Two rival Medieval shows vie for supremacy in the world of Renaissance Faires.",
//             "synopsis":"Two rival Medieval shows vie for supremacy in the world of Renaissance Faires.",
//             "yt_trailer_code":"RkWY6Qdm058",
//             "language":"en",
//             "mpa_rating":"PG-13",
//             "background_image":"https:\/\/yts.mx\/assets\/images\/movies\/alls_faire_in_love_2009\/background.jpg",
//             "background_image_original":"https:\/\/yts.mx\/assets\/images\/movies\/alls_faire_in_love_2009\/background.jpg",
//             "small_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/alls_faire_in_love_2009\/small-cover.jpg",
//             "medium_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/alls_faire_in_love_2009\/medium-cover.jpg",
//             "large_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/alls_faire_in_love_2009\/large-cover.jpg",
//             "state":"ok",
//             "torrents":[
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/5648EF306A6358C2336A3EE57E1F9E9836CFD537",
//                   "hash":"5648EF306A6358C2336A3EE57E1F9E9836CFD537",
//                   "quality":"720p",
//                   "type":"web",
//                   "seeds":50,
//                   "peers":33,
//                   "size":"994.42 MB",
//                   "size_bytes":1042724946,
//                   "date_uploaded":"2021-12-26 23:58:20",
//                   "date_uploaded_unix":1640559500
//                },
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/D7B2C55419FAC83F95192FD9CB4623238872E397",
//                   "hash":"D7B2C55419FAC83F95192FD9CB4623238872E397",
//                   "quality":"1080p",
//                   "type":"web",
//                   "seeds":0,
//                   "peers":0,
//                   "size":"1.8 GB",
//                   "size_bytes":1932735283,
//                   "date_uploaded":"2021-12-27 01:21:49",
//                   "date_uploaded_unix":1640564509
//                }
//             ],
//             "date_uploaded":"2021-12-26 23:58:20",
//             "date_uploaded_unix":1640559500
//          },
//          {
//             "id":38797,
//             "url":"https:\/\/yts.mx\/movies\/fatal-beauty-2019",
//             "imdb_code":"tt8328744",
//             "title":"Fatal Beauty",
//             "title_english":"Fatal Beauty",
//             "title_long":"Fatal Beauty (2019)",
//             "slug":"fatal-beauty-2019",
//             "year":2019,
//             "rating":4.7,
//             "runtime":86,
//             "genres":[
//                "Drama"
//             ],
//             "summary":"Trevor and Michelle live an average life in the suburbs. When new neighbors move in, however, they find their world turned upside down, and their neighborhood into a place of chaos and shame.",
//             "description_full":"Trevor and Michelle live an average life in the suburbs. When new neighbors move in, however, they find their world turned upside down, and their neighborhood into a place of chaos and shame.",
//             "synopsis":"Trevor and Michelle live an average life in the suburbs. When new neighbors move in, however, they find their world turned upside down, and their neighborhood into a place of chaos and shame.",
//             "yt_trailer_code":"",
//             "language":"en",
//             "mpa_rating":"",
//             "background_image":"https:\/\/yts.mx\/assets\/images\/movies\/fatal_beauty_2019\/background.jpg",
//             "background_image_original":"https:\/\/yts.mx\/assets\/images\/movies\/fatal_beauty_2019\/background.jpg",
//             "small_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/fatal_beauty_2019\/small-cover.jpg",
//             "medium_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/fatal_beauty_2019\/medium-cover.jpg",
//             "large_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/fatal_beauty_2019\/large-cover.jpg",
//             "state":"ok",
//             "torrents":[
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/006E2ACB18E65CE78277F1DDD649CE2EE60AE7CB",
//                   "hash":"006E2ACB18E65CE78277F1DDD649CE2EE60AE7CB",
//                   "quality":"720p",
//                   "type":"web",
//                   "seeds":38,
//                   "peers":18,
//                   "size":"795.38 MB",
//                   "size_bytes":834016379,
//                   "date_uploaded":"2021-12-26 22:11:53",
//                   "date_uploaded_unix":1640553113
//                },
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/552616A9B781C77EADDAF3601E50D7F60FCABF3F",
//                   "hash":"552616A9B781C77EADDAF3601E50D7F60FCABF3F",
//                   "quality":"1080p",
//                   "type":"web",
//                   "seeds":0,
//                   "peers":0,
//                   "size":"1.6 GB",
//                   "size_bytes":1717986918,
//                   "date_uploaded":"2021-12-26 23:11:42",
//                   "date_uploaded_unix":1640556702
//                }
//             ],
//             "date_uploaded":"2021-12-26 22:11:53",
//             "date_uploaded_unix":1640553113
//          },
//          {
//             "id":38796,
//             "url":"https:\/\/yts.mx\/movies\/ninkyo-gakuen-2019",
//             "imdb_code":"tt9664368",
//             "title":"Ninkyo Gakuen",
//             "title_english":"Ninkyo Gakuen",
//             "title_long":"Ninkyo Gakuen (2019)",
//             "slug":"ninkyo-gakuen-2019",
//             "year":2019,
//             "rating":5.8,
//             "runtime":119,
//             "genres":[
//                "Comedy",
//                "Crime"
//             ],
//             "summary":"A high school and its students are in shambles and far from anything anyone would describe as doing well. The thugs of the Akimotogumi yakuza decide to take the matter up and assert themselves and their codes upon the students. They do make a difference, but nothing as easy as that. Two yakuza members are about to persist or abandon hope. \u2014aghaemi",
//             "description_full":"A high school and its students are in shambles and far from anything anyone would describe as doing well. The thugs of the Akimotogumi yakuza decide to take the matter up and assert themselves and their codes upon the students. They do make a difference, but nothing as easy as that. Two yakuza members are about to persist or abandon hope. \u2014aghaemi",
//             "synopsis":"A high school and its students are in shambles and far from anything anyone would describe as doing well. The thugs of the Akimotogumi yakuza decide to take the matter up and assert themselves and their codes upon the students. They do make a difference, but nothing as easy as that. Two yakuza members are about to persist or abandon hope. \u2014aghaemi",
//             "yt_trailer_code":"",
//             "language":"ja",
//             "mpa_rating":"",
//             "background_image":"https:\/\/yts.mx\/assets\/images\/movies\/ninkyo_gakuen_2019\/background.jpg",
//             "background_image_original":"https:\/\/yts.mx\/assets\/images\/movies\/ninkyo_gakuen_2019\/background.jpg",
//             "small_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/ninkyo_gakuen_2019\/small-cover.jpg",
//             "medium_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/ninkyo_gakuen_2019\/medium-cover.jpg",
//             "large_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/ninkyo_gakuen_2019\/large-cover.jpg",
//             "state":"ok",
//             "torrents":[
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/A7CEBD33C9782415D25A5AC24A64F251EB32663F",
//                   "hash":"A7CEBD33C9782415D25A5AC24A64F251EB32663F",
//                   "quality":"720p",
//                   "type":"web",
//                   "seeds":0,
//                   "peers":0,
//                   "size":"1.07 GB",
//                   "size_bytes":1148903752,
//                   "date_uploaded":"2021-12-26 18:03:49",
//                   "date_uploaded_unix":1640538229
//                },
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/A0445497AB41E2568593F39CA566F6ABF56F3B69",
//                   "hash":"A0445497AB41E2568593F39CA566F6ABF56F3B69",
//                   "quality":"1080p",
//                   "type":"web",
//                   "seeds":0,
//                   "peers":0,
//                   "size":"2 GB",
//                   "size_bytes":2147483648,
//                   "date_uploaded":"2021-12-26 20:15:58",
//                   "date_uploaded_unix":1640546158
//                }
//             ],
//             "date_uploaded":"2021-12-26 18:03:49",
//             "date_uploaded_unix":1640538229
//          },
//          {
//             "id":38795,
//             "url":"https:\/\/yts.mx\/movies\/hot-chocolate-holiday-2020",
//             "imdb_code":"tt13779034",
//             "title":"Hot Chocolate Holiday",
//             "title_english":"Hot Chocolate Holiday",
//             "title_long":"Hot Chocolate Holiday (2020)",
//             "slug":"hot-chocolate-holiday-2020",
//             "year":2020,
//             "rating":6.5,
//             "runtime":0,
//             "genres":[
//                "Romance"
//             ],
//             "summary":"Colette runs a coffee shop that is known for her secret and famous hot chocolate. Marcus, a new dessert shop owner, starts to draw in Colette's customers, she is determined to expose him.",
//             "description_full":"Colette runs a coffee shop that is known for her secret and famous hot chocolate. Marcus, a new dessert shop owner, starts to draw in Colette's customers, she is determined to expose him.",
//             "synopsis":"Colette runs a coffee shop that is known for her secret and famous hot chocolate. Marcus, a new dessert shop owner, starts to draw in Colette's customers, she is determined to expose him.",
//             "yt_trailer_code":"",
//             "language":"en",
//             "mpa_rating":"",
//             "background_image":"https:\/\/yts.mx\/assets\/images\/movies\/hot_chocolate_holiday_2020\/background.jpg",
//             "background_image_original":"https:\/\/yts.mx\/assets\/images\/movies\/hot_chocolate_holiday_2020\/background.jpg",
//             "small_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/hot_chocolate_holiday_2020\/small-cover.jpg",
//             "medium_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/hot_chocolate_holiday_2020\/medium-cover.jpg",
//             "large_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/hot_chocolate_holiday_2020\/large-cover.jpg",
//             "state":"ok",
//             "torrents":[
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/990E4B0BD86ADAF146CD7E5F205A2846C506C208",
//                   "hash":"990E4B0BD86ADAF146CD7E5F205A2846C506C208",
//                   "quality":"720p",
//                   "type":"web",
//                   "seeds":0,
//                   "peers":0,
//                   "size":"805.78 MB",
//                   "size_bytes":844921569,
//                   "date_uploaded":"2021-12-26 19:07:41",
//                   "date_uploaded_unix":1640542061
//                },
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/C65AA581446A9D28C3EC887D268C208B0C4470D0",
//                   "hash":"C65AA581446A9D28C3EC887D268C208B0C4470D0",
//                   "quality":"1080p",
//                   "type":"web",
//                   "seeds":0,
//                   "peers":0,
//                   "size":"1.46 GB",
//                   "size_bytes":1567663063,
//                   "date_uploaded":"2021-12-26 20:04:54",
//                   "date_uploaded_unix":1640545494
//                }
//             ],
//             "date_uploaded":"2021-12-26 19:07:41",
//             "date_uploaded_unix":1640542061
//          },
//          {
//             "id":38793,
//             "url":"https:\/\/yts.mx\/movies\/felix-austria-2013",
//             "imdb_code":"tt0481470",
//             "title":"Felix Austria!",
//             "title_english":"Felix Austria!",
//             "title_long":"Felix Austria! (2013)",
//             "slug":"felix-austria-2013",
//             "year":2013,
//             "rating":7.2,
//             "runtime":77,
//             "genres":[
//                "Biography",
//                "Documentary",
//                "History"
//             ],
//             "summary":"Compelled by the inheritance of a mysterious box of letters, American aesthete Felix Pfeifle begins the journey of a lifetime to reach the source of the correspondence: the last heir of the Holy Roman Emperors, aging Archduke Otto von Habsburg. The quest takes Felix across America , over the Atlantic and beyond. But time is running out on another end--Felix's father is dying of Huntington's Disease, an incurable genetic disease that Felix has a fifty percent chance of developing. Ultimately, FELIX AUSTRIA! is a universal story about a person's life-defining passions, fears, and triumphs when one dares to dream. \u2014'Robert Dassanowsky' (qv)",
//             "description_full":"Compelled by the inheritance of a mysterious box of letters, American aesthete Felix Pfeifle begins the journey of a lifetime to reach the source of the correspondence: the last heir of the Holy Roman Emperors, aging Archduke Otto von Habsburg. The quest takes Felix across America , over the Atlantic and beyond. But time is running out on another end--Felix's father is dying of Huntington's Disease, an incurable genetic disease that Felix has a fifty percent chance of developing. Ultimately, FELIX AUSTRIA! is a universal story about a person's life-defining passions, fears, and triumphs when one dares to dream. \u2014'Robert Dassanowsky' (qv)",
//             "synopsis":"Compelled by the inheritance of a mysterious box of letters, American aesthete Felix Pfeifle begins the journey of a lifetime to reach the source of the correspondence: the last heir of the Holy Roman Emperors, aging Archduke Otto von Habsburg. The quest takes Felix across America , over the Atlantic and beyond. But time is running out on another end--Felix's father is dying of Huntington's Disease, an incurable genetic disease that Felix has a fifty percent chance of developing. Ultimately, FELIX AUSTRIA! is a universal story about a person's life-defining passions, fears, and triumphs when one dares to dream. \u2014'Robert Dassanowsky' (qv)",
//             "yt_trailer_code":"KM7uJwuHTZ8",
//             "language":"en",
//             "mpa_rating":"",
//             "background_image":"https:\/\/yts.mx\/assets\/images\/movies\/felix_austria_2013\/background.jpg",
//             "background_image_original":"https:\/\/yts.mx\/assets\/images\/movies\/felix_austria_2013\/background.jpg",
//             "small_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/felix_austria_2013\/small-cover.jpg",
//             "medium_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/felix_austria_2013\/medium-cover.jpg",
//             "large_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/felix_austria_2013\/large-cover.jpg",
//             "state":"ok",
//             "torrents":[
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/59689856F74FFDE780113FD1783B0813A716BA3D",
//                   "hash":"59689856F74FFDE780113FD1783B0813A716BA3D",
//                   "quality":"720p",
//                   "type":"web",
//                   "seeds":26,
//                   "peers":7,
//                   "size":"705.68 MB",
//                   "size_bytes":739959112,
//                   "date_uploaded":"2021-12-26 05:54:04",
//                   "date_uploaded_unix":1640494444
//                },
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/85505F3884A51179C159C9809FC5BD03E50481FE",
//                   "hash":"85505F3884A51179C159C9809FC5BD03E50481FE",
//                   "quality":"1080p",
//                   "type":"web",
//                   "seeds":64,
//                   "peers":12,
//                   "size":"1.28 GB",
//                   "size_bytes":1374389535,
//                   "date_uploaded":"2021-12-26 06:55:15",
//                   "date_uploaded_unix":1640498115
//                }
//             ],
//             "date_uploaded":"2021-12-26 05:54:04",
//             "date_uploaded_unix":1640494444
//          },
//          {
//             "id":38792,
//             "url":"https:\/\/yts.mx\/movies\/dennis-hopper-uneasy-rider-2016",
//             "imdb_code":"tt6140128",
//             "title":"Dennis Hopper: Uneasy Rider",
//             "title_english":"Dennis Hopper: Uneasy Rider",
//             "title_long":"Dennis Hopper: Uneasy Rider (2016)",
//             "slug":"dennis-hopper-uneasy-rider-2016",
//             "year":2016,
//             "rating":6.8,
//             "runtime":89,
//             "genres":[
//                "Documentary"
//             ],
//             "summary":"Easy Rider legend Dennis Hopper's unflappable veneer belied a man constantly teetering towards his next larger than life incarnation. Influential artist, filmmaker, musician and eccentric, Hopper's crammed and exorbitant life offers a riveting narrative. Director Hermann Vaske knew him well and delivers an often hilarious expos\u00e9 of the man behind the mask. We discover a delicate and fascinating man, who harbored a troubled soul. \u2014Marie Dupont",
//             "description_full":"Easy Rider legend Dennis Hopper's unflappable veneer belied a man constantly teetering towards his next larger than life incarnation. Influential artist, filmmaker, musician and eccentric, Hopper's crammed and exorbitant life offers a riveting narrative. Director Hermann Vaske knew him well and delivers an often hilarious expos\u00e9 of the man behind the mask. We discover a delicate and fascinating man, who harbored a troubled soul. \u2014Marie Dupont",
//             "synopsis":"Easy Rider legend Dennis Hopper's unflappable veneer belied a man constantly teetering towards his next larger than life incarnation. Influential artist, filmmaker, musician and eccentric, Hopper's crammed and exorbitant life offers a riveting narrative. Director Hermann Vaske knew him well and delivers an often hilarious expos\u00e9 of the man behind the mask. We discover a delicate and fascinating man, who harbored a troubled soul. \u2014Marie Dupont",
//             "yt_trailer_code":"rRAt-1TY-4k",
//             "language":"de",
//             "mpa_rating":"",
//             "background_image":"https:\/\/yts.mx\/assets\/images\/movies\/dennis_hopper_uneasy_rider_2016\/background.jpg",
//             "background_image_original":"https:\/\/yts.mx\/assets\/images\/movies\/dennis_hopper_uneasy_rider_2016\/background.jpg",
//             "small_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/dennis_hopper_uneasy_rider_2016\/small-cover.jpg",
//             "medium_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/dennis_hopper_uneasy_rider_2016\/medium-cover.jpg",
//             "large_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/dennis_hopper_uneasy_rider_2016\/large-cover.jpg",
//             "state":"ok",
//             "torrents":[
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/446E300C5D23AB30BDD77D16C5908949857F1F2A",
//                   "hash":"446E300C5D23AB30BDD77D16C5908949857F1F2A",
//                   "quality":"720p",
//                   "type":"web",
//                   "seeds":35,
//                   "peers":7,
//                   "size":"816.42 MB",
//                   "size_bytes":856078418,
//                   "date_uploaded":"2021-12-26 05:48:53",
//                   "date_uploaded_unix":1640494133
//                },
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/03C719496189278041C563A43D67B55E10C6BCE7",
//                   "hash":"03C719496189278041C563A43D67B55E10C6BCE7",
//                   "quality":"1080p",
//                   "type":"web",
//                   "seeds":43,
//                   "peers":10,
//                   "size":"1.48 GB",
//                   "size_bytes":1589137900,
//                   "date_uploaded":"2021-12-26 06:50:27",
//                   "date_uploaded_unix":1640497827
//                }
//             ],
//             "date_uploaded":"2021-12-26 05:48:53",
//             "date_uploaded_unix":1640494133
//          },
//          {
//             "id":38791,
//             "url":"https:\/\/yts.mx\/movies\/prey-of-the-jaguar-1996",
//             "imdb_code":"tt0117380",
//             "title":"Prey of the Jaguar",
//             "title_english":"Prey of the Jaguar",
//             "title_long":"Prey of the Jaguar (1996)",
//             "slug":"prey-of-the-jaguar-1996",
//             "year":1996,
//             "rating":3.6,
//             "runtime":96,
//             "genres":[
//                "Action",
//                "Thriller"
//             ],
//             "summary":"When his wife and son are brutally murdered by a fugitive drug lord that he helped put behind bars, former Special Ops agent Derek Leigh vows to avenge their deaths. After mastering lethal fighting skills at the hands of a martial arts instructor, he assumes the identity of The Jaguar - a vigilante superhero from his son's drawings - and with nothing more to lose, sets out on a fierce, one-man blood hunt to bring the criminals to final justice. \u2014Echo Bridge Home Entertainment",
//             "description_full":"When his wife and son are brutally murdered by a fugitive drug lord that he helped put behind bars, former Special Ops agent Derek Leigh vows to avenge their deaths. After mastering lethal fighting skills at the hands of a martial arts instructor, he assumes the identity of The Jaguar - a vigilante superhero from his son's drawings - and with nothing more to lose, sets out on a fierce, one-man blood hunt to bring the criminals to final justice. \u2014Echo Bridge Home Entertainment",
//             "synopsis":"When his wife and son are brutally murdered by a fugitive drug lord that he helped put behind bars, former Special Ops agent Derek Leigh vows to avenge their deaths. After mastering lethal fighting skills at the hands of a martial arts instructor, he assumes the identity of The Jaguar - a vigilante superhero from his son's drawings - and with nothing more to lose, sets out on a fierce, one-man blood hunt to bring the criminals to final justice. \u2014Echo Bridge Home Entertainment",
//             "yt_trailer_code":"qKutdTkhOXc",
//             "language":"en",
//             "mpa_rating":"R",
//             "background_image":"https:\/\/yts.mx\/assets\/images\/movies\/prey_of_the_jaguar_1996\/background.jpg",
//             "background_image_original":"https:\/\/yts.mx\/assets\/images\/movies\/prey_of_the_jaguar_1996\/background.jpg",
//             "small_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/prey_of_the_jaguar_1996\/small-cover.jpg",
//             "medium_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/prey_of_the_jaguar_1996\/medium-cover.jpg",
//             "large_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/prey_of_the_jaguar_1996\/large-cover.jpg",
//             "state":"ok",
//             "torrents":[
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/7D6DD03284A1B3B0D8BA2182C442CB42A6717A86",
//                   "hash":"7D6DD03284A1B3B0D8BA2182C442CB42A6717A86",
//                   "quality":"720p",
//                   "type":"bluray",
//                   "seeds":66,
//                   "peers":17,
//                   "size":"864.07 MB",
//                   "size_bytes":906043064,
//                   "date_uploaded":"2021-12-26 02:44:43",
//                   "date_uploaded_unix":1640483083
//                },
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/CE75363E8084EFD0282A73B3867A0432D9DDAE6E",
//                   "hash":"CE75363E8084EFD0282A73B3867A0432D9DDAE6E",
//                   "quality":"1080p",
//                   "type":"bluray",
//                   "seeds":69,
//                   "peers":32,
//                   "size":"1.57 GB",
//                   "size_bytes":1685774664,
//                   "date_uploaded":"2021-12-26 03:45:51",
//                   "date_uploaded_unix":1640486751
//                }
//             ],
//             "date_uploaded":"2021-12-26 02:44:43",
//             "date_uploaded_unix":1640483083
//          },
//          {
//             "id":38790,
//             "url":"https:\/\/yts.mx\/movies\/a-reckoning-2018",
//             "imdb_code":"tt7605084",
//             "title":"A Reckoning",
//             "title_english":"A Reckoning",
//             "title_long":"A Reckoning (2018)",
//             "slug":"a-reckoning-2018",
//             "year":2018,
//             "rating":3.5,
//             "runtime":80,
//             "genres":[
//                "Western"
//             ],
//             "summary":"After a her husband is brutally murdered, a widowed homesteader seeks revenge and leaves everything behind to hunt down his killer.",
//             "description_full":"After a her husband is brutally murdered, a widowed homesteader seeks revenge and leaves everything behind to hunt down his killer.",
//             "synopsis":"After a her husband is brutally murdered, a widowed homesteader seeks revenge and leaves everything behind to hunt down his killer.",
//             "yt_trailer_code":"q47WODKFDCE",
//             "language":"en",
//             "mpa_rating":"",
//             "background_image":"https:\/\/yts.mx\/assets\/images\/movies\/a_reckoning_2018\/background.jpg",
//             "background_image_original":"https:\/\/yts.mx\/assets\/images\/movies\/a_reckoning_2018\/background.jpg",
//             "small_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/a_reckoning_2018\/small-cover.jpg",
//             "medium_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/a_reckoning_2018\/medium-cover.jpg",
//             "large_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/a_reckoning_2018\/large-cover.jpg",
//             "state":"ok",
//             "torrents":[
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/17EE3FF3234F7A09F6427CD720611FB87137D6F6",
//                   "hash":"17EE3FF3234F7A09F6427CD720611FB87137D6F6",
//                   "quality":"720p",
//                   "type":"bluray",
//                   "seeds":82,
//                   "peers":25,
//                   "size":"741.48 MB",
//                   "size_bytes":777498132,
//                   "date_uploaded":"2021-12-26 01:18:30",
//                   "date_uploaded_unix":1640477910
//                },
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/7B55C48382B2CC145CDDE3D4CA05391E9FAD19C0",
//                   "hash":"7B55C48382B2CC145CDDE3D4CA05391E9FAD19C0",
//                   "quality":"1080p",
//                   "type":"bluray",
//                   "seeds":102,
//                   "peers":43,
//                   "size":"1.49 GB",
//                   "size_bytes":1599875318,
//                   "date_uploaded":"2021-12-26 02:06:22",
//                   "date_uploaded_unix":1640480782
//                }
//             ],
//             "date_uploaded":"2021-12-26 01:18:30",
//             "date_uploaded_unix":1640477910
//          },
//          {
//             "id":38789,
//             "url":"https:\/\/yts.mx\/movies\/down-but-not-out-2015",
//             "imdb_code":"tt3891594",
//             "title":"Down, But Not Out!",
//             "title_english":"Down, But Not Out!",
//             "title_long":"Down, But Not Out! (2015)",
//             "slug":"down-but-not-out-2015",
//             "year":2015,
//             "rating":9,
//             "runtime":68,
//             "genres":[
//                "Documentary",
//                "Sport"
//             ],
//             "summary":"\"Down, But Not Out!\" captures all the action of four amateur women boxers as they step for the first time into the ring. Each fighter, ANNA, DARIA, AGA and ALICJA go all out to win as they are challenged to face an unknown opponent at a box competition organized by the amateur boxing association within their league. We also witness the trainer, PRZEMEK, his mental and emotional connection with each fighter as he pushes the physical strength of Aga, the mental toughness of Alicja, the vulnerability of Daria and the desire of Anna as they each exceed their own personal limits. \u2014Angelique B. Grimm",
//             "description_full":"\"Down, But Not Out!\" captures all the action of four amateur women boxers as they step for the first time into the ring. Each fighter, ANNA, DARIA, AGA and ALICJA go all out to win as they are challenged to face an unknown opponent at a box competition organized by the amateur boxing association within their league. We also witness the trainer, PRZEMEK, his mental and emotional connection with each fighter as he pushes the physical strength of Aga, the mental toughness of Alicja, the vulnerability of Daria and the desire of Anna as they each exceed their own personal limits. \u2014Angelique B. Grimm",
//             "synopsis":"\"Down, But Not Out!\" captures all the action of four amateur women boxers as they step for the first time into the ring. Each fighter, ANNA, DARIA, AGA and ALICJA go all out to win as they are challenged to face an unknown opponent at a box competition organized by the amateur boxing association within their league. We also witness the trainer, PRZEMEK, his mental and emotional connection with each fighter as he pushes the physical strength of Aga, the mental toughness of Alicja, the vulnerability of Daria and the desire of Anna as they each exceed their own personal limits. \u2014Angelique B. Grimm",
//             "yt_trailer_code":"SRjLE8cmUsc",
//             "language":"en",
//             "mpa_rating":"",
//             "background_image":"https:\/\/yts.mx\/assets\/images\/movies\/down_but_not_out_2015\/background.jpg",
//             "background_image_original":"https:\/\/yts.mx\/assets\/images\/movies\/down_but_not_out_2015\/background.jpg",
//             "small_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/down_but_not_out_2015\/small-cover.jpg",
//             "medium_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/down_but_not_out_2015\/medium-cover.jpg",
//             "large_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/down_but_not_out_2015\/large-cover.jpg",
//             "state":"ok",
//             "torrents":[
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/A77166F709E3E58677B028077D9779BF813D581B",
//                   "hash":"A77166F709E3E58677B028077D9779BF813D581B",
//                   "quality":"720p",
//                   "type":"web",
//                   "seeds":0,
//                   "peers":0,
//                   "size":"624.72 MB",
//                   "size_bytes":655066399,
//                   "date_uploaded":"2021-12-26 20:00:12",
//                   "date_uploaded_unix":1640545212
//                },
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/F051644C40910C0FA7A1DC13B1ED31F67DFA620A",
//                   "hash":"F051644C40910C0FA7A1DC13B1ED31F67DFA620A",
//                   "quality":"1080p",
//                   "type":"web",
//                   "seeds":0,
//                   "peers":0,
//                   "size":"1.13 GB",
//                   "size_bytes":1213328261,
//                   "date_uploaded":"2021-12-26 21:52:43",
//                   "date_uploaded_unix":1640551963
//                }
//             ],
//             "date_uploaded":"2021-12-26 20:00:12",
//             "date_uploaded_unix":1640545212
//          },
//          {
//             "id":38788,
//             "url":"https:\/\/yts.mx\/movies\/we-grew-up-here-2014",
//             "imdb_code":"tt3638306",
//             "title":"We Grew Up Here",
//             "title_english":"We Grew Up Here",
//             "title_long":"We Grew Up Here (2014)",
//             "slug":"we-grew-up-here-2014",
//             "year":2014,
//             "rating":7.9,
//             "runtime":86,
//             "genres":[
//                "Drama",
//                "Music"
//             ],
//             "summary":"A musician struggling to cope with his split from his lover and muse begins to suspect his past is being erased in this unnerving film starring members of Chicago band, Paper Thick Walls. As songs Liam and Lauren recorded together disappear from tapes and mutual friends deny they know him, Liam hits the road on a desperate journey to prove to himself and everyone else that he's not insane. \u2014CIMMFest",
//             "description_full":"A musician struggling to cope with his split from his lover and muse begins to suspect his past is being erased in this unnerving film starring members of Chicago band, Paper Thick Walls. As songs Liam and Lauren recorded together disappear from tapes and mutual friends deny they know him, Liam hits the road on a desperate journey to prove to himself and everyone else that he's not insane. \u2014CIMMFest",
//             "synopsis":"A musician struggling to cope with his split from his lover and muse begins to suspect his past is being erased in this unnerving film starring members of Chicago band, Paper Thick Walls. As songs Liam and Lauren recorded together disappear from tapes and mutual friends deny they know him, Liam hits the road on a desperate journey to prove to himself and everyone else that he's not insane. \u2014CIMMFest",
//             "yt_trailer_code":"",
//             "language":"en",
//             "mpa_rating":"",
//             "background_image":"https:\/\/yts.mx\/assets\/images\/movies\/we_grew_up_here_2014\/background.jpg",
//             "background_image_original":"https:\/\/yts.mx\/assets\/images\/movies\/we_grew_up_here_2014\/background.jpg",
//             "small_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/we_grew_up_here_2014\/small-cover.jpg",
//             "medium_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/we_grew_up_here_2014\/medium-cover.jpg",
//             "large_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/we_grew_up_here_2014\/large-cover.jpg",
//             "state":"ok",
//             "torrents":[
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/29D04A688C59D709344CF0985E6A93FF36CC7E86",
//                   "hash":"29D04A688C59D709344CF0985E6A93FF36CC7E86",
//                   "quality":"720p",
//                   "type":"web",
//                   "seeds":58,
//                   "peers":19,
//                   "size":"783.12 MB",
//                   "size_bytes":821160837,
//                   "date_uploaded":"2021-12-26 16:58:14",
//                   "date_uploaded_unix":1640534294
//                },
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/37DA29AA9D621DDCAD2B8117C9000C600F57978D",
//                   "hash":"37DA29AA9D621DDCAD2B8117C9000C600F57978D",
//                   "quality":"1080p",
//                   "type":"web",
//                   "seeds":79,
//                   "peers":25,
//                   "size":"1.42 GB",
//                   "size_bytes":1524713390,
//                   "date_uploaded":"2021-12-26 19:00:29",
//                   "date_uploaded_unix":1640541629
//                }
//             ],
//             "date_uploaded":"2021-12-26 16:58:14",
//             "date_uploaded_unix":1640534294
//          },
//          {
//             "id":38785,
//             "url":"https:\/\/yts.mx\/movies\/sorry-thanks-2009",
//             "imdb_code":"tt1162125",
//             "title":"Sorry, Thanks",
//             "title_english":"Sorry, Thanks",
//             "title_long":"Sorry, Thanks (2009)",
//             "slug":"sorry-thanks-2009",
//             "year":2009,
//             "rating":4.5,
//             "runtime":93,
//             "genres":[
//                "Comedy"
//             ],
//             "summary":"Reeling from a brutal break-up, Kira sleeps with Max, a charming but disheveled wreck already committed to long-term girlfriend Sara. Max (no emotional sophisticate) becomes obsessed, mostly with Kira, but vaguely with his curious lack of conscience as well. Kira, fighting to win a job she hates and running aimless romantic loops, faces the precarious double challenge of choosing a next step and charting a course back to sanity. Good luck leading with your heart, when your heart is an utter emotional idiot. \u2014sorrythanksfilm.com",
//             "description_full":"Reeling from a brutal break-up, Kira sleeps with Max, a charming but disheveled wreck already committed to long-term girlfriend Sara. Max (no emotional sophisticate) becomes obsessed, mostly with Kira, but vaguely with his curious lack of conscience as well. Kira, fighting to win a job she hates and running aimless romantic loops, faces the precarious double challenge of choosing a next step and charting a course back to sanity. Good luck leading with your heart, when your heart is an utter emotional idiot. \u2014sorrythanksfilm.com",
//             "synopsis":"Reeling from a brutal break-up, Kira sleeps with Max, a charming but disheveled wreck already committed to long-term girlfriend Sara. Max (no emotional sophisticate) becomes obsessed, mostly with Kira, but vaguely with his curious lack of conscience as well. Kira, fighting to win a job she hates and running aimless romantic loops, faces the precarious double challenge of choosing a next step and charting a course back to sanity. Good luck leading with your heart, when your heart is an utter emotional idiot. \u2014sorrythanksfilm.com",
//             "yt_trailer_code":"vNrXej4hgtM",
//             "language":"en",
//             "mpa_rating":"",
//             "background_image":"https:\/\/yts.mx\/assets\/images\/movies\/sorry_thanks_2009\/background.jpg",
//             "background_image_original":"https:\/\/yts.mx\/assets\/images\/movies\/sorry_thanks_2009\/background.jpg",
//             "small_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/sorry_thanks_2009\/small-cover.jpg",
//             "medium_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/sorry_thanks_2009\/medium-cover.jpg",
//             "large_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/sorry_thanks_2009\/large-cover.jpg",
//             "state":"ok",
//             "torrents":[
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/E2A7DA373D52CF770CC8977D9084A21A82F85266",
//                   "hash":"E2A7DA373D52CF770CC8977D9084A21A82F85266",
//                   "quality":"720p",
//                   "type":"web",
//                   "seeds":15,
//                   "peers":9,
//                   "size":"856.89 MB",
//                   "size_bytes":898514289,
//                   "date_uploaded":"2021-12-25 16:10:06",
//                   "date_uploaded_unix":1640445006
//                },
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/312925A529C5AED6750A95BB513F5FF026ADA61D",
//                   "hash":"312925A529C5AED6750A95BB513F5FF026ADA61D",
//                   "quality":"1080p",
//                   "type":"web",
//                   "seeds":31,
//                   "peers":7,
//                   "size":"1.72 GB",
//                   "size_bytes":1846835937,
//                   "date_uploaded":"2021-12-25 17:17:37",
//                   "date_uploaded_unix":1640449057
//                }
//             ],
//             "date_uploaded":"2021-12-25 16:10:06",
//             "date_uploaded_unix":1640445006
//          },
//          {
//             "id":38786,
//             "url":"https:\/\/yts.mx\/movies\/mothers-daughters-2008",
//             "imdb_code":"tt1264898",
//             "title":"Mothers & Daughters",
//             "title_english":"Mothers & Daughters",
//             "title_long":"Mothers & Daughters (2008)",
//             "slug":"mothers-daughters-2008",
//             "year":2008,
//             "rating":6.3,
//             "runtime":85,
//             "genres":[
//                "Comedy"
//             ],
//             "summary":"Explores the hilarious, the ridiculous, and the complicated dynamics of mother\/daughter relationships. These three mother\/daughter pairs offer a diverse glimpse into the needs, the denials, and the inescapable love that these women feel towards each other. Ultimately, it is a celebration of the inexplicable bond of mothers and daughters. \u2014Erin Offer",
//             "description_full":"Explores the hilarious, the ridiculous, and the complicated dynamics of mother\/daughter relationships. These three mother\/daughter pairs offer a diverse glimpse into the needs, the denials, and the inescapable love that these women feel towards each other. Ultimately, it is a celebration of the inexplicable bond of mothers and daughters. \u2014Erin Offer",
//             "synopsis":"Explores the hilarious, the ridiculous, and the complicated dynamics of mother\/daughter relationships. These three mother\/daughter pairs offer a diverse glimpse into the needs, the denials, and the inescapable love that these women feel towards each other. Ultimately, it is a celebration of the inexplicable bond of mothers and daughters. \u2014Erin Offer",
//             "yt_trailer_code":"",
//             "language":"en",
//             "mpa_rating":"",
//             "background_image":"https:\/\/yts.mx\/assets\/images\/movies\/mothers_daughters_2008\/background.jpg",
//             "background_image_original":"https:\/\/yts.mx\/assets\/images\/movies\/mothers_daughters_2008\/background.jpg",
//             "small_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/mothers_daughters_2008\/small-cover.jpg",
//             "medium_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/mothers_daughters_2008\/medium-cover.jpg",
//             "large_cover_image":"https:\/\/yts.mx\/assets\/images\/movies\/mothers_daughters_2008\/large-cover.jpg",
//             "state":"ok",
//             "torrents":[
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/DC83CC04B28502647171AF56819192498DEA19B1",
//                   "hash":"DC83CC04B28502647171AF56819192498DEA19B1",
//                   "quality":"720p",
//                   "type":"web",
//                   "seeds":34,
//                   "peers":19,
//                   "size":"782.85 MB",
//                   "size_bytes":820877722,
//                   "date_uploaded":"2021-12-25 21:03:08",
//                   "date_uploaded_unix":1640462588
//                },
//                {
//                   "url":"https:\/\/yts.mx\/torrent\/download\/5331424BC98194D1E813BF77AAE5952AA9E42269",
//                   "hash":"5331424BC98194D1E813BF77AAE5952AA9E42269",
//                   "quality":"1080p",
//                   "type":"web",
//                   "seeds":50,
//                   "peers":27,
//                   "size":"1.42 GB",
//                   "size_bytes":1524713390,
//                   "date_uploaded":"2021-12-25 22:07:21",
//                   "date_uploaded_unix":1640466441
//                }
//             ],
//             "date_uploaded":"2021-12-25 21:03:08",
//             "date_uploaded_unix":1640462588
//          }
//       ]
//    },
//    "@meta":{
//       "server_time":1640591992,
//       "server_timezone":"CET",
//       "api_version":2,
//       "execution_time":"0.01 ms"
//    }
// }
