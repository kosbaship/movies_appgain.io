// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieResponseModel _$MovieResponseModelFromJson(Map<String, dynamic> json) =>
    MovieResponseModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      backdropPath: json['backdrop_path'] as String?,
      genreIds:
          (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      overview: json['overview'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      releaseDate: json['release_date'] as String?,
    );

Map<String, dynamic> _$MovieResponseModelToJson(MovieResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'backdrop_path': instance.backdropPath,
      'genre_ids': instance.genreIds,
      'overview': instance.overview,
      'vote_average': instance.voteAverage,
      'release_date': instance.releaseDate,
    };
