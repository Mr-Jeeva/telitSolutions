import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:telit_solutions/resource/colors.dart';
import 'package:telit_solutions/resource/responsive.dart';

class VisionWeb extends StatefulWidget {
  const VisionWeb(AutoScrollController aScrollController, {super.key});

  @override
  State<VisionWeb> createState() => _VisionWebState();
}

class _VisionWebState extends State<VisionWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.secondaryColor,
      height: SizeConfig.getScreenHeight(context) - (SizeConfig.getScreenHeight(context) * 0.17),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: SizeConfig.getScreenWidth(context) * 0.75,
            child: Column(
              children: [
                Text(
                    "\"The Vision To be a premium corporate solutions provider with a clear focus on business diversification and customer satisfaction\"",
                    style: GoogleFonts.ubuntu(
                        height: 1, fontWeight: FontWeight.bold, fontSize: SizeConfig.getScreenWidth(context) * 0.035, color: Colors.white)),
                Padding(
                  padding: EdgeInsets.only(top: SizeConfig.getScreenWidth(context) * 0.02),
                  child: Row(
                    children: [
                      Text(
                        "#TelitSolutionsVision",
                        style: GoogleFonts.ubuntu(
                            fontWeight: FontWeight.w500, fontSize: SizeConfig.getScreenWidth(context) * 0.03, color: AppColors.primaryColor),
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
