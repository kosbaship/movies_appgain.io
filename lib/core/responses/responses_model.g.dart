// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieModelResultResponse _$MovieModelResultResponseFromJson(
        Map<String, dynamic> json) =>
    MovieModelResultResponse(
      (json['results'] as List<dynamic>?)
          ?.map((e) => MovieModelResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MovieModelResultResponseToJson(
        MovieModelResultResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

MovieModelResponse _$MovieModelResponseFromJson(Map<String, dynamic> json) =>
    MovieModelResponse(
      id: json['id'] as int?,
      title: json['title'] as String?,
      backdropPath: json['backdrop_path'] as String?,
      genreIds:
          (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      overview: json['overview'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      releaseDate: json['release_date'] as String?,
    );

Map<String, dynamic> _$MovieModelResponseToJson(MovieModelResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'backdrop_path': instance.backdropPath,
      'genre_ids': instance.genreIds,
      'overview': instance.overview,
      'vote_average': instance.voteAverage,
      'release_date': instance.releaseDate,
    };
