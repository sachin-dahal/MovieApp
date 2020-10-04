import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/entities/app_error.dart';
import 'package:movie_app/domain/entities/movie_entity.dart';
import 'package:movie_app/domain/entities/no_params.dart';
import 'package:movie_app/domain/repositories/movie_repository.dart';
import 'package:movie_app/domain/usecases/usecase.dart';

// purpose of this useCase is to send the data to UI....
// it will call the method from repository and sends the data to UI
// UI needs to deal with Widgets so  USE CASES makes that easy for the UI

class GetTrending extends UseCase<List<MovieEntity>, NoParams> {
  final MovieRepository repository;

  GetTrending(this.repository);

// giving it a name as call(), because if a method name is given as call()
// it will be executed along with the instance of a class
// if we create an instance of a GetTrending(), the below call() method will executes
  @override
  Future<Either<AppError, List<MovieEntity>>> call(NoParams noParams) async {
    return await repository.getTrending();
  }
}
