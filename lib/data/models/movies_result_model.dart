import 'movie_model.dart';

class MoviesResultModel {
  List<MovieModel> movies;

  MoviesResultModel({this.movies});

  MoviesResultModel.fromJson(Map<String, dynamic> parsedJson) {
    if (parsedJson['results'] != null) {
      movies = List<MovieModel>();
      parsedJson['results'].forEach((v) {
        movies.add(MovieModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.movies != null) {
      data['results'] = this.movies.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
