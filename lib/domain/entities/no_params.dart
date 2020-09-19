import 'package:equatable/equatable.dart';

class NoParams extends Equatable {
  // purpose of creating this class is to pass as a parameter in call() at usecases
  // sometimes, there won't be anything to pass as params to call API
  // in such cases, we use NoParams

  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}
