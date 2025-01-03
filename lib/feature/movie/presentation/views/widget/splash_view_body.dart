
import 'package:flutter/material.dart';
import 'package:movie/feature/movie/data/models/movie_model.dart';
import 'package:movie/feature/movie/presentation/views/widget/splash_widget.dart';

class SplashViewBody extends StatefulWidget{
 final  SplashModel splashData;
  const SplashViewBody({super.key,required this.splashData});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  bool isLast = false;
  var control = PageController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Expanded(
                child: PageView.builder(
                    onPageChanged: (int index) {

                      if (index == widget.splashData.results!.length-1) {
                        setState(() {
                          isLast = true;

                        });
                      } else {
                        setState(() {
                          isLast = false;
                        });
                      }
                    },
                    controller: control,
                    itemCount:  widget.splashData.results?.length,
                    //boarding.length,
                    itemBuilder: (context, index) => OnBoardingWidget(
                        model: widget.splashData.results![index])
                  // onBoardingItem(boarding[index])),
                )),


              ],
            ));

  }
}