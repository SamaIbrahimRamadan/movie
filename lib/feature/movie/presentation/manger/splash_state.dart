part of 'splash_cubit.dart';


abstract class SplashState  {}
final class SplashInitial extends SplashState {}
final class SplashLoading extends SplashState{}
final class SplashDataDone extends SplashState{
SplashModel splashData;
SplashDataDone({required this.splashData});
}
final class SplashError extends SplashState{
  final String message ;
  SplashError({required this.message});
}
