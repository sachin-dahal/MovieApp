import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/entities/app_error.dart';
import 'package:movie_app/domain/entities/movie_entity.dart';

abstract class MovieRepository {
  // using dartz to pass data to the UI, if it gets real DATA or ERROR
  // if error we can send LEFT(data), if correct RIGHT(data)

  // List<MovieEntity> becasue this repo is for UI so, we need to show MovieEntity
  Future<Either<AppError, List<MovieEntity>>> getTrending();
  Future<Either<AppError, List<MovieEntity>>> getPopular();
  Future<Either<AppError, List<MovieEntity>>> getComingSoon();
  Future<Either<AppError, List<MovieEntity>>> getPlayingNow();
}
