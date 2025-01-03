import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie/feature/movie/presentation/views/widget/splash_view_builder.dart';

class SplashView extends StatelessWidget{
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
     return const Scaffold(
       body: SplashViewBuilder(),
     );
  }

}