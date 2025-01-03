import 'package:dartz/dartz.dart';

import '../errors/failures.dart';


abstract class UseCase<Type, Param> {
  Future<Either<Failure, Type>> call([Param param]);
  // اي يوز كيز جواها ميثود هيبقي اسمها call
// return type of method is either
// type can take any data type
}

class NoParam {} // class when no found param
