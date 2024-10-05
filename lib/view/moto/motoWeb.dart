import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:telit_solutions/resource/colors.dart';
import 'package:telit_solutions/resource/responsive.dart';

class MotoWeb extends StatefulWidget {
  const MotoWeb(AutoScrollController aScrollController, {super.key});

  @override
  State<MotoWeb> createState() => _MotoWebState();
}

class _MotoWebState extends State<MotoWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      height: SizeConfig.getScreenHeight(context) - (SizeConfig.getScreenHeight(context) * 0.17),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: SizeConfig.getScreenWidth(context) * 0.75,
            child: Column(
              children: [
                Text("While our teams facilitate the best IT solution for your company, we make sure your experience is hassle-free.",
                    style: GoogleFonts.ubuntu(
                      height: 1,
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.getScreenWidth(context) * 0.035,
                      color: Colors.white
                    )),
                Padding(
                  padding: EdgeInsets.only(top: SizeConfig.getScreenWidth(context) * 0.02),
                  child: Row(
                    children: [
                      Text(
                        "#TogetherWeDevelopYourSuccess",
                        style: GoogleFonts.ubuntu(
                            fontWeight: FontWeight.w500,
                            fontSize: SizeConfig.getScreenWidth(context) * 0.03,
                            color: AppColors.secondaryAlterColor),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
