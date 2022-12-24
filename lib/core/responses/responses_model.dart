import 'package:json_annotation/json_annotation.dart';

part 'responses_model.g.dart';

@JsonSerializable()
class MovieModelResultResponse {
  @JsonKey(name: "results")
  List<MovieModelResponse>? results;

  MovieModelResultResponse(this.results);

  factory MovieModelResultResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieModelResultResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieModelResultResponseToJson(this);
}

@JsonSerializable()
class MovieModelResponse {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "title")
  final String? title;
  @JsonKey(name: "backdrop_path")
  final String? backdropPath;
  @JsonKey(name: "genre_ids")
  final List<int>? genreIds;
  @JsonKey(name: "overview")
  final String? overview;
  @JsonKey(name: "vote_average")
  final double? voteAverage;
  @JsonKey(name: "release_date")
  final String? releaseDate;

  const MovieModelResponse({
    this.id,
    this.title,
    this.backdropPath,
    this.genreIds,
    this.overview,
    this.voteAverage,
    this.releaseDate,
  });

  factory MovieModelResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieModelResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieModelResponseToJson(this);
}
