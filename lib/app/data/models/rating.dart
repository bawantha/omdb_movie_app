import 'package:json_annotation/json_annotation.dart';

part 'rating.g.dart';

@JsonSerializable()
class Rating{
  String? Source;
  String? Value;

  Rating({this.Source, this.Value});

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);


  Map<String, dynamic> toJson() => _$RatingToJson(this);
}