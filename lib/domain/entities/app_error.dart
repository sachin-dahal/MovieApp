import 'package:equatable/equatable.dart';

class AppError extends Equatable {
  final String message;
// this will hold anytype od error messages
  AppError(this.message);

// adding message to the props, if it needs to be compared in the later stage
  @override
  // TODO: implement props
  List<Object> get props => [message];
}
