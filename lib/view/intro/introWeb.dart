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
  final carouselController = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.getScreenHeight(context) - (SizeConfig.getScreenHeight(context) * 0.17),
      width: SizeConfig.getScreenWidth(context),
      child: Stack(
        children: [
          Row(
            children: [
              Expanded(
                child: AbsorbPointer(
                  child: CarouselSlider(
                    carouselController: carouselController,
                    options: CarouselOptions(
                      aspectRatio: 16 / 9,
                      viewportFraction: 1,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayCurve: Curves.fastOutSlowIn,
                    ),
                    // image size should be 1920x1246
                    items: ["assets/image1.jpg", "assets/image2.jpg", "assets/image3.jpg", "assets/image4.jpg"].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Image.asset(
                            i,
                            height: double.infinity,
                            width: SizeConfig.getScreenWidth(context),
                            fit: BoxFit.cover,
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
          Positioned.fill(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                    onTap: () {
                      carouselController.previousPage();
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: SizeConfig.getScreenHeight(context) * 0.1,
                      color: Colors.white24,
                    )),
                Spacer(),
                InkWell(
                    onTap: () {
                      carouselController.nextPage();
                    },
                    child: Icon(Icons.arrow_forward_ios_rounded, size: SizeConfig.getScreenHeight(context) * 0.1, color: Colors.white24))
              ],
            ),
          )
        ],
      ),
    );
  }
}
