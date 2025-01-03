import 'package:flutter/cupertino.dart';
import 'package:movie/feature/movie/data/models/movie_model.dart';
import 'package:movie/feature/movie/domain/entity/movie_entity.dart';


class OnBoardingWidget extends StatelessWidget {
  final  Result model;

  const OnBoardingWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Image(
            image: NetworkImage(
              model.backdropPath??"",
            ),
            height: 300,
          ),
        ),


      ],
    );
  }
}