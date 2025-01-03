import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movie/core/utils/api_servics.dart';
import 'package:movie/feature/movie/data/data_source/remote_data_source.dart';
import 'package:movie/feature/movie/data/repo/basic_repo_impl.dart';
import 'package:movie/feature/movie/presentation/manger/splash_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/utils/observer.dart';
import 'feature/movie/domain/use_cases/splash_use_case.dart';
import 'feature/movie/presentation/views/splash_view.dart';
void main() {
  Bloc.observer = BlocObserverService();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SplashCubit(SplashUseCase(
              basicRepo: BasicRepoImpl(
                  remoteDataSourceSplash:
                  RemoteDataSourceSplashImpl(
                      apiService: ApiService(
                          Dio()
                      ),),
              ),
          ),
          )..getSplashData(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false ,
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashView(),
      ),
    );
  }
}


