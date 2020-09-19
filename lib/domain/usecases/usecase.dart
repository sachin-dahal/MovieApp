import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/entities/app_error.dart';

abstract class UseCase<Type, Params> {
  // purpose of creating this abstract class is to maintain the code
  // so that another developer in future could not manipulate the call() in usecases

  // type: what does usecase returns
  // params: what is required to call API

  Future<Either<AppError, Type>> call(Params params);
}
