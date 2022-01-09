

import 'package:json_annotation/json_annotation.dart';

part 'movie_summary.g.dart';

@JsonSerializable()
class MovieSummary {
  String? Title;
  String? Year;
  String? imdbID;
  String? Type;
  String? Poster;

  MovieSummary({this.Title, this.Year, this.imdbID, this.Type, this.Poster});

  factory MovieSummary.fromJson(Map<String, dynamic> json) => _$MovieSummaryFromJson(json);


  Map<String, dynamic> toJson() => _$MovieSummaryToJson(this);

}
