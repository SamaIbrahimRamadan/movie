
import 'dart:developer';

import 'package:movie/core/utils/api_servics.dart';
import 'package:movie/core/utils/constant.dart';
import 'package:movie/feature/movie/domain/entity/movie_entity.dart';

import '../models/movie_model.dart';

abstract class RemoteDataSourceSplash{
  Future<SplashModel> getSplashData();
  Future<List<SplashMovieEntity>> getPopularData();
  Future<List<SplashMovieEntity>> getTopRateData();
}
class RemoteDataSourceSplashImpl extends RemoteDataSourceSplash{
  final ApiService apiService;
  RemoteDataSourceSplashImpl({required this.apiService});

  @override
  Future<SplashModel> getSplashData() async{
    var data =await apiService.get(endPoint: splashEndPoint);
    log(data.toString(),name: "splashError");

    // List<SplashMovieEntity> dataSplash =[];
    // for (var item in data["results"]) {
    //   dataSplash.add(SplashModel.fromJson(item));
    // }
    return SplashModel.fromJson(data);
  }

  @override
  Future<List<SplashMovieEntity>> getPopularData() {
    // TODO: implement getPopularData
    throw UnimplementedError();
  }

  @override
  Future<List<SplashMovieEntity>> getTopRateData() {
    // TODO: implement getTopRateData
    throw UnimplementedError();
  }

  
}