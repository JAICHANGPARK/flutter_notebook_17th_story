// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Movie _$$_MovieFromJson(Map<String, dynamic> json) => _$_Movie(
      id: json['id'] as int?,
      url: json['url'] as String?,
      title: json['title'] as String?,
      titleEnglish: json['titleEnglish'] as String?,
      titleLong: json['titleLong'] as String?,
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$$_MovieToJson(_$_Movie instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'title': instance.title,
      'titleEnglish': instance.titleEnglish,
      'titleLong': instance.titleLong,
      'slug': instance.slug,
    };

_$_MovieDatas _$$_MovieDatasFromJson(Map<String, dynamic> json) =>
    _$_MovieDatas(
      movieCount: json['movieCount'] as int?,
      limit: json['limit'] as int?,
      pageNumber: json['pageNumber'] as int?,
      movies: (json['movies'] as List<dynamic>?)
          ?.map((e) => Movie.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MovieDatasToJson(_$_MovieDatas instance) =>
    <String, dynamic>{
      'movieCount': instance.movieCount,
      'limit': instance.limit,
      'pageNumber': instance.pageNumber,
      'movies': instance.movies,
    };

_$_Movies _$$_MoviesFromJson(Map<String, dynamic> json) => _$_Movies(
      status: json['status'] as String?,
      statusMessage: json['statusMessage'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => MovieDatas.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MoviesToJson(_$_Movies instance) => <String, dynamic>{
      'status': instance.status,
      'statusMessage': instance.statusMessage,
      'data': instance.data,
    };
