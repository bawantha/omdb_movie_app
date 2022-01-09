// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieSummary _$MovieSummaryFromJson(Map<String, dynamic> json) => MovieSummary(
      Title: json['Title'] as String?,
      Year: json['Year'] as String?,
      imdbID: json['imdbID'] as String?,
      Type: json['Type'] as String?,
      Poster: json['Poster'] as String?,
    );

Map<String, dynamic> _$MovieSummaryToJson(MovieSummary instance) =>
    <String, dynamic>{
      'Title': instance.Title,
      'Year': instance.Year,
      'imdbID': instance.imdbID,
      'Type': instance.Type,
      'Poster': instance.Poster,
    };
