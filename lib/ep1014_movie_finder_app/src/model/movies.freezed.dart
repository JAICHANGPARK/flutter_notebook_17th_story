// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return _Movie.fromJson(json);
}

/// @nodoc
class _$MovieTearOff {
  const _$MovieTearOff();

  _Movie call(
      {int? id,
      String? url,
      String? title,
      String? titleEnglish,
      String? titleLong,
      String? slug}) {
    return _Movie(
      id: id,
      url: url,
      title: title,
      titleEnglish: titleEnglish,
      titleLong: titleLong,
      slug: slug,
    );
  }

  Movie fromJson(Map<String, Object?> json) {
    return Movie.fromJson(json);
  }
}

/// @nodoc
const $Movie = _$MovieTearOff();

/// @nodoc
mixin _$Movie {
  int? get id => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get titleEnglish => throw _privateConstructorUsedError;
  String? get titleLong => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? url,
      String? title,
      String? titleEnglish,
      String? titleLong,
      String? slug});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res> implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  final Movie _value;
  // ignore: unused_field
  final $Res Function(Movie) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? title = freezed,
    Object? titleEnglish = freezed,
    Object? titleLong = freezed,
    Object? slug = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      titleEnglish: titleEnglish == freezed
          ? _value.titleEnglish
          : titleEnglish // ignore: cast_nullable_to_non_nullable
              as String?,
      titleLong: titleLong == freezed
          ? _value.titleLong
          : titleLong // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$MovieCopyWith(_Movie value, $Res Function(_Movie) then) =
      __$MovieCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? url,
      String? title,
      String? titleEnglish,
      String? titleLong,
      String? slug});
}

/// @nodoc
class __$MovieCopyWithImpl<$Res> extends _$MovieCopyWithImpl<$Res>
    implements _$MovieCopyWith<$Res> {
  __$MovieCopyWithImpl(_Movie _value, $Res Function(_Movie) _then)
      : super(_value, (v) => _then(v as _Movie));

  @override
  _Movie get _value => super._value as _Movie;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? title = freezed,
    Object? titleEnglish = freezed,
    Object? titleLong = freezed,
    Object? slug = freezed,
  }) {
    return _then(_Movie(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      titleEnglish: titleEnglish == freezed
          ? _value.titleEnglish
          : titleEnglish // ignore: cast_nullable_to_non_nullable
              as String?,
      titleLong: titleLong == freezed
          ? _value.titleLong
          : titleLong // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Movie implements _Movie {
  _$_Movie(
      {this.id,
      this.url,
      this.title,
      this.titleEnglish,
      this.titleLong,
      this.slug});

  factory _$_Movie.fromJson(Map<String, dynamic> json) =>
      _$$_MovieFromJson(json);

  @override
  final int? id;
  @override
  final String? url;
  @override
  final String? title;
  @override
  final String? titleEnglish;
  @override
  final String? titleLong;
  @override
  final String? slug;

  @override
  String toString() {
    return 'Movie(id: $id, url: $url, title: $title, titleEnglish: $titleEnglish, titleLong: $titleLong, slug: $slug)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Movie &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.titleEnglish, titleEnglish) &&
            const DeepCollectionEquality().equals(other.titleLong, titleLong) &&
            const DeepCollectionEquality().equals(other.slug, slug));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(titleEnglish),
      const DeepCollectionEquality().hash(titleLong),
      const DeepCollectionEquality().hash(slug));

  @JsonKey(ignore: true)
  @override
  _$MovieCopyWith<_Movie> get copyWith =>
      __$MovieCopyWithImpl<_Movie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieToJson(this);
  }
}

abstract class _Movie implements Movie {
  factory _Movie(
      {int? id,
      String? url,
      String? title,
      String? titleEnglish,
      String? titleLong,
      String? slug}) = _$_Movie;

  factory _Movie.fromJson(Map<String, dynamic> json) = _$_Movie.fromJson;

  @override
  int? get id;
  @override
  String? get url;
  @override
  String? get title;
  @override
  String? get titleEnglish;
  @override
  String? get titleLong;
  @override
  String? get slug;
  @override
  @JsonKey(ignore: true)
  _$MovieCopyWith<_Movie> get copyWith => throw _privateConstructorUsedError;
}

MovieDatas _$MovieDatasFromJson(Map<String, dynamic> json) {
  return _MovieDatas.fromJson(json);
}

/// @nodoc
class _$MovieDatasTearOff {
  const _$MovieDatasTearOff();

  _MovieDatas call(
      {int? movieCount, int? limit, int? pageNumber, List<Movie>? movies}) {
    return _MovieDatas(
      movieCount: movieCount,
      limit: limit,
      pageNumber: pageNumber,
      movies: movies,
    );
  }

  MovieDatas fromJson(Map<String, Object?> json) {
    return MovieDatas.fromJson(json);
  }
}

/// @nodoc
const $MovieDatas = _$MovieDatasTearOff();

/// @nodoc
mixin _$MovieDatas {
  int? get movieCount => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  int? get pageNumber => throw _privateConstructorUsedError;
  List<Movie>? get movies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDatasCopyWith<MovieDatas> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDatasCopyWith<$Res> {
  factory $MovieDatasCopyWith(
          MovieDatas value, $Res Function(MovieDatas) then) =
      _$MovieDatasCopyWithImpl<$Res>;
  $Res call(
      {int? movieCount, int? limit, int? pageNumber, List<Movie>? movies});
}

/// @nodoc
class _$MovieDatasCopyWithImpl<$Res> implements $MovieDatasCopyWith<$Res> {
  _$MovieDatasCopyWithImpl(this._value, this._then);

  final MovieDatas _value;
  // ignore: unused_field
  final $Res Function(MovieDatas) _then;

  @override
  $Res call({
    Object? movieCount = freezed,
    Object? limit = freezed,
    Object? pageNumber = freezed,
    Object? movies = freezed,
  }) {
    return _then(_value.copyWith(
      movieCount: movieCount == freezed
          ? _value.movieCount
          : movieCount // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      pageNumber: pageNumber == freezed
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      movies: movies == freezed
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>?,
    ));
  }
}

/// @nodoc
abstract class _$MovieDatasCopyWith<$Res> implements $MovieDatasCopyWith<$Res> {
  factory _$MovieDatasCopyWith(
          _MovieDatas value, $Res Function(_MovieDatas) then) =
      __$MovieDatasCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? movieCount, int? limit, int? pageNumber, List<Movie>? movies});
}

/// @nodoc
class __$MovieDatasCopyWithImpl<$Res> extends _$MovieDatasCopyWithImpl<$Res>
    implements _$MovieDatasCopyWith<$Res> {
  __$MovieDatasCopyWithImpl(
      _MovieDatas _value, $Res Function(_MovieDatas) _then)
      : super(_value, (v) => _then(v as _MovieDatas));

  @override
  _MovieDatas get _value => super._value as _MovieDatas;

  @override
  $Res call({
    Object? movieCount = freezed,
    Object? limit = freezed,
    Object? pageNumber = freezed,
    Object? movies = freezed,
  }) {
    return _then(_MovieDatas(
      movieCount: movieCount == freezed
          ? _value.movieCount
          : movieCount // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      pageNumber: pageNumber == freezed
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      movies: movies == freezed
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieDatas implements _MovieDatas {
  _$_MovieDatas({this.movieCount, this.limit, this.pageNumber, this.movies});

  factory _$_MovieDatas.fromJson(Map<String, dynamic> json) =>
      _$$_MovieDatasFromJson(json);

  @override
  final int? movieCount;
  @override
  final int? limit;
  @override
  final int? pageNumber;
  @override
  final List<Movie>? movies;

  @override
  String toString() {
    return 'MovieDatas(movieCount: $movieCount, limit: $limit, pageNumber: $pageNumber, movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieDatas &&
            const DeepCollectionEquality()
                .equals(other.movieCount, movieCount) &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality()
                .equals(other.pageNumber, pageNumber) &&
            const DeepCollectionEquality().equals(other.movies, movies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(movieCount),
      const DeepCollectionEquality().hash(limit),
      const DeepCollectionEquality().hash(pageNumber),
      const DeepCollectionEquality().hash(movies));

  @JsonKey(ignore: true)
  @override
  _$MovieDatasCopyWith<_MovieDatas> get copyWith =>
      __$MovieDatasCopyWithImpl<_MovieDatas>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieDatasToJson(this);
  }
}

abstract class _MovieDatas implements MovieDatas {
  factory _MovieDatas(
      {int? movieCount,
      int? limit,
      int? pageNumber,
      List<Movie>? movies}) = _$_MovieDatas;

  factory _MovieDatas.fromJson(Map<String, dynamic> json) =
      _$_MovieDatas.fromJson;

  @override
  int? get movieCount;
  @override
  int? get limit;
  @override
  int? get pageNumber;
  @override
  List<Movie>? get movies;
  @override
  @JsonKey(ignore: true)
  _$MovieDatasCopyWith<_MovieDatas> get copyWith =>
      throw _privateConstructorUsedError;
}

Movies _$MoviesFromJson(Map<String, dynamic> json) {
  return _Movies.fromJson(json);
}

/// @nodoc
class _$MoviesTearOff {
  const _$MoviesTearOff();

  _Movies call(
      {String? status, String? statusMessage, List<MovieDatas>? data}) {
    return _Movies(
      status: status,
      statusMessage: statusMessage,
      data: data,
    );
  }

  Movies fromJson(Map<String, Object?> json) {
    return Movies.fromJson(json);
  }
}

/// @nodoc
const $Movies = _$MoviesTearOff();

/// @nodoc
mixin _$Movies {
  String? get status => throw _privateConstructorUsedError;
  String? get statusMessage => throw _privateConstructorUsedError;
  List<MovieDatas>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoviesCopyWith<Movies> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesCopyWith<$Res> {
  factory $MoviesCopyWith(Movies value, $Res Function(Movies) then) =
      _$MoviesCopyWithImpl<$Res>;
  $Res call({String? status, String? statusMessage, List<MovieDatas>? data});
}

/// @nodoc
class _$MoviesCopyWithImpl<$Res> implements $MoviesCopyWith<$Res> {
  _$MoviesCopyWithImpl(this._value, this._then);

  final Movies _value;
  // ignore: unused_field
  final $Res Function(Movies) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? statusMessage = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      statusMessage: statusMessage == freezed
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MovieDatas>?,
    ));
  }
}

/// @nodoc
abstract class _$MoviesCopyWith<$Res> implements $MoviesCopyWith<$Res> {
  factory _$MoviesCopyWith(_Movies value, $Res Function(_Movies) then) =
      __$MoviesCopyWithImpl<$Res>;
  @override
  $Res call({String? status, String? statusMessage, List<MovieDatas>? data});
}

/// @nodoc
class __$MoviesCopyWithImpl<$Res> extends _$MoviesCopyWithImpl<$Res>
    implements _$MoviesCopyWith<$Res> {
  __$MoviesCopyWithImpl(_Movies _value, $Res Function(_Movies) _then)
      : super(_value, (v) => _then(v as _Movies));

  @override
  _Movies get _value => super._value as _Movies;

  @override
  $Res call({
    Object? status = freezed,
    Object? statusMessage = freezed,
    Object? data = freezed,
  }) {
    return _then(_Movies(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      statusMessage: statusMessage == freezed
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MovieDatas>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Movies implements _Movies {
  _$_Movies({this.status, this.statusMessage, this.data});

  factory _$_Movies.fromJson(Map<String, dynamic> json) =>
      _$$_MoviesFromJson(json);

  @override
  final String? status;
  @override
  final String? statusMessage;
  @override
  final List<MovieDatas>? data;

  @override
  String toString() {
    return 'Movies(status: $status, statusMessage: $statusMessage, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Movies &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.statusMessage, statusMessage) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(statusMessage),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$MoviesCopyWith<_Movies> get copyWith =>
      __$MoviesCopyWithImpl<_Movies>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MoviesToJson(this);
  }
}

abstract class _Movies implements Movies {
  factory _Movies(
      {String? status,
      String? statusMessage,
      List<MovieDatas>? data}) = _$_Movies;

  factory _Movies.fromJson(Map<String, dynamic> json) = _$_Movies.fromJson;

  @override
  String? get status;
  @override
  String? get statusMessage;
  @override
  List<MovieDatas>? get data;
  @override
  @JsonKey(ignore: true)
  _$MoviesCopyWith<_Movies> get copyWith => throw _privateConstructorUsedError;
}
