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
