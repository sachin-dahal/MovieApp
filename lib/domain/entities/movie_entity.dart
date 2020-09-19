import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class MovieEntity extends Equatable {
  final String posterPath;
  final int id;
  final String backdropPath;
  final String title;
  final num voteAverage;
  final String releaseDate;
  final String overview;

  const MovieEntity({
    @required this.posterPath,
    @required this.id,
    @required this.backdropPath,
    @required this.title,
    @required this.voteAverage,
    @required this.releaseDate,
    this.overview,
  }) : assert(id != null, "Make sure movie id is not null");
  // assert makes sure that, id must not be null, else the app will not be debugged

  @override
  List<Object> get props => [id, title];

  @override
  bool get stringify => true;
  // if true, overrides the toString() to output the data inside props []
}
