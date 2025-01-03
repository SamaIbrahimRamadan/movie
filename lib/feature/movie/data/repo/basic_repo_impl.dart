import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movie/core/errors/failures.dart';
import 'package:movie/feature/movie/data/data_source/remote_data_source.dart';
import 'package:movie/feature/movie/data/models/movie_model.dart';
import 'package:movie/feature/movie/domain/entity/movie_entity.dart';
import 'package:movie/feature/movie/domain/repo/basic_repo.dart';

class BasicRepoImpl extends BasicRepo{
  final RemoteDataSourceSplashImpl remoteDataSourceSplash;
  BasicRepoImpl({required this.remoteDataSourceSplash});


  @override
  Future<Either<Failure,SplashModel>> getSplashData() async{
    try{

      var splashData= await remoteDataSourceSplash.getSplashData();
      return right(splashData);
    }  catch(e){
      log(e.toString(),name: "splashError");
      if(e is DioError){
        return left(ServerFailure.fromDioError(e));
      }else{
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<SplashMovieEntity>>> getPopularMovie() {
    // TODO: implement getPopularMovie
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<SplashMovieEntity>>> getTopRateData() {
    // TODO: implement getTopRateData
    throw UnimplementedError();
  }
  }