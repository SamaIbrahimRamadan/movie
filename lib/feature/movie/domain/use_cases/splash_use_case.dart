import 'package:dartz/dartz.dart';
import 'package:movie/core/errors/failures.dart';
import 'package:movie/core/use_cases/use_case.dart';
import 'package:movie/feature/movie/domain/entity/movie_entity.dart';

import '../../data/models/movie_model.dart';
import '../repo/basic_repo.dart';

class SplashUseCase extends UseCase <SplashModel, NoParam>{
  final BasicRepo basicRepo;
  SplashUseCase({required this.basicRepo});

  @override
  Future<Either<Failure, SplashModel>> call([NoParam? param]) async{
     return await basicRepo.getSplashData();
  }

}