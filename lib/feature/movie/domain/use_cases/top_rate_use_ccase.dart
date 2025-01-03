import 'package:dartz/dartz.dart';
import 'package:movie/core/use_cases/use_case.dart';

import '../../../../core/errors/failures.dart';
import '../entity/movie_entity.dart';
import '../repo/basic_repo.dart';

class TopRateUseCase extends UseCase <List<SplashMovieEntity>, NoParam>{
  final BasicRepo basicRepo;
  TopRateUseCase({required this.basicRepo});

  @override
  Future<Either<Failure, List<SplashMovieEntity>>> call([NoParam? param]) async{
    return await basicRepo.getTopRateData();
  }

}