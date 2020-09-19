import 'package:movie_app/domain/entities/movie_entity.dart';

class MovieModel extends MovieEntity {
  final int id;
  final bool video;
  final int voteCount;
  final double voteAverage;
  final String title;
  final String releaseDate;
  final String originalLanguage;
  final String originalTitle;
  final List<int> genreIds;
  final String backdropPath;
  final bool adult;
  final String overview;
  final String posterPath;
  final double popularity;
  final String mediaType;

  MovieModel(
      {this.id,
      this.video,
      this.voteCount,
      this.voteAverage,
      this.title,
      this.releaseDate,
      this.originalLanguage,
      this.originalTitle,
      this.genreIds,
      this.backdropPath,
      this.adult,
      this.overview,
      this.posterPath,
      this.popularity,
      this.mediaType})
      : super(
          id: id,
          title: title,
          backdropPath: backdropPath,
          posterPath: posterPath,
          releaseDate: releaseDate,
          voteAverage: voteAverage,
          overview: overview,
        );

  factory MovieModel.fromJson(Map<String, dynamic> parsedJson) {
    return MovieModel(
      id: parsedJson['id'],
      video: parsedJson['video'],
      voteCount: parsedJson['vote_count'],
      voteAverage: parsedJson['vote_average']?.toDouble() ?? 0.0,
      title: parsedJson['title'],
      releaseDate: parsedJson['release_date'],
      originalLanguage: parsedJson['original_language'],
      originalTitle: parsedJson['original_title'],
      genreIds: parsedJson['genre_ids'].cast<int>(),
      backdropPath: parsedJson['backdrop_path'],
      adult: parsedJson['adult'],
      overview: parsedJson['overview'],
      posterPath: parsedJson['poster_path'],
      popularity: parsedJson['popularity']?.toDouble() ?? 0.0,
      mediaType: parsedJson['media_type'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['video'] = this.video;
    data['vote_count'] = this.voteCount;
    data['vote_average'] = this.voteAverage;
    data['title'] = this.title;
    data['release_date'] = this.releaseDate;
    data['original_language'] = this.originalLanguage;
    data['original_title'] = this.originalTitle;
    data['genre_ids'] = this.genreIds;
    data['backdrop_path'] = this.backdropPath;
    data['adult'] = this.adult;
    data['overview'] = this.overview;
    data['poster_path'] = this.posterPath;
    data['popularity'] = this.popularity;
    data['media_type'] = this.mediaType;
    return data;
  }
}
