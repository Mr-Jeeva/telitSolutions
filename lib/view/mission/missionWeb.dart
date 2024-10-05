import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:telit_solutions/resource/colors.dart';
import 'package:telit_solutions/resource/responsive.dart';

class MissionWeb extends StatefulWidget {
  const MissionWeb(AutoScrollController aScrollController, {super.key});

  @override
  State<MissionWeb> createState() => _MissionWebState();
}

class _MissionWebState extends State<MissionWeb> {
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
                Text("\"Our Mission is We bring the finest technology products and services to our clients by ensuring seamless work environment to them.\"",
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
                        "#TelitSolutionsMission",
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
