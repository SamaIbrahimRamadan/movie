import 'package:dartz/dartz.dart';
import 'package:movie/feature/movie/data/models/movie_model.dart';

import '../../../../core/errors/failures.dart';
import '../entity/movie_entity.dart';

abstract class BasicRepo{
  Future<Either<Failure, SplashModel>> getSplashData();
  Future<Either<Failure, List<SplashMovieEntity>>> getPopularMovie();
  Future<Either<Failure, List<SplashMovieEntity>>> getTopRateData();



}