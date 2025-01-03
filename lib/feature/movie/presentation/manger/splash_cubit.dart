import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:movie/feature/movie/data/models/movie_model.dart';

import 'package:movie/feature/movie/domain/entity/movie_entity.dart';
import 'package:movie/feature/movie/domain/use_cases/splash_use_case.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit(this.splashUseCase) : super(SplashInitial());
  final SplashUseCase splashUseCase;
  Future<void> getSplashData() async {

    emit(SplashLoading());

    var result = await splashUseCase.call();
    result.fold((failure) {

      emit(SplashError(message: failure.errMessage.toString()));
    }, (splashData) {
      emit(SplashDataDone(splashData: splashData));
    });
  }
}
