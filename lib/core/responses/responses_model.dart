import 'package:json_annotation/json_annotation.dart';

part 'responses_model.g.dart';

@JsonSerializable()
class MovieResponseModel {
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

  const MovieResponseModel({
    this.id,
    this.title,
    this.backdropPath,
    this.genreIds,
    this.overview,
    this.voteAverage,
    this.releaseDate,
  });

  factory MovieResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$MovieResponseModelToJson(this);
}
