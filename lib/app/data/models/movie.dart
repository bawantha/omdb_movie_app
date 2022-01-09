import 'package:json_annotation/json_annotation.dart';
import 'package:omdb_movie_app/app/data/models/rating.dart';



part 'movie.g.dart';

@JsonSerializable(explicitToJson: true)
class Movie {
  String? Title;
  String? Year;
  String? Rated;
  String? Released;
  String? Runtime;
  String? Genre;
  String? Director;
  String? Writer;
  String? Actors;
  String? Plot;
  String? Language;
  String? Country;
  String? Awards;
  String? Poster;
  List<Rating>? Ratings;
  String? Metascore;
  String? imdbRating;
  String? imdbVotes;
  String? imdbID;
  String? Type;
  String? DVD;
  String? BoxOffice;
  String? Production;
  String? Website;
  String? Response;

  Movie(
      {this.Title,
      this.Year,
      this.Rated,
      this.Released,
      this.Runtime,
      this.Genre,
      this.Director,
      this.Writer,
      this.Actors,
      this.Plot,
      this.Language,
      this.Country,
      this.Awards,
      this.Poster,
      this.Ratings,
      this.Metascore,
      this.imdbRating,
      this.imdbVotes,
      this.imdbID,
      this.Type,
      this.DVD,
      this.BoxOffice,
      this.Production,
      this.Website,
      this.Response});

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
  Map<String, dynamic> toJson() => _$MovieToJson(this);

}
