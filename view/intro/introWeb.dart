import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:telit_solutions/resource/responsive.dart';

class IntroWeb extends StatefulWidget {
  AutoScrollController aScrollController;

  IntroWeb(this.aScrollController, {Key? key}) : super(key: key);

  @override
  State<IntroWeb> createState() => _IntroWebState();
}

class _IntroWebState extends State<IntroWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.getScreenHeight(context) - (SizeConfig.getScreenHeight(context) * 0.17),
      width: SizeConfig.getScreenWidth(context),
      child: AbsorbPointer(
        child: CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            autoPlay: true,
          ),
          items: ["assets/image1.jpg", "assets/image2.jpg", "assets/image3.jpg", "assets/image4.jpg"].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    child: Image.asset(
                  i,
                  height: double.infinity,
                  width: SizeConfig.getScreenWidth(context),
                  fit: BoxFit.fill,
                ));
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
