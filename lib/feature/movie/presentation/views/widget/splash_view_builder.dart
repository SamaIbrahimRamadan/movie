import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie/feature/movie/presentation/manger/splash_cubit.dart';
import 'package:movie/feature/movie/presentation/views/widget/splash_view_body.dart';

class SplashViewBuilder extends StatelessWidget{
  const SplashViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashCubit,SplashState>(
        builder: (BuildContext context ,state) {
          if (state is SplashDataDone) {
            return SplashViewBody(splashData: state.splashData,);
          } else if (state is SplashError) {
            return Center(child: Text(state.message,style: const TextStyle(
              fontSize: 45
            ),));
          } else {
            return const CircularProgressIndicator();
          }
        });
  }}

