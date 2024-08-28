import 'package:cinemax_app/core/utils/errors/errors.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type, Parameter> {
  Future<Either<Failure, Type>> call([Parameter parameter]);
  
}
class NoParam{}