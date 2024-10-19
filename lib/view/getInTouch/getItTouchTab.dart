import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../resource/colors.dart';
import '../../resource/responsive.dart';

class GetItTouchTab extends StatefulWidget {
  const GetItTouchTab(AutoScrollController aScrollController, {super.key});

  @override
  State<GetItTouchTab> createState() => _GetItTouchTabState();
}

class _GetItTouchTabState extends State<GetItTouchTab> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.getScreenHeight(context) - (SizeConfig.getScreenHeight(context) * 0.17),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: SizeConfig.getScreenWidth(context) * 0.4,
            child: Text(
              "Get in touch with us and discover how we can push you or your company forward.",
              textAlign: TextAlign.center,
              style: GoogleFonts.ubuntu(
                height: 1.2,
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: SizeConfig.getScreenWidth(context) * 0.03,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: AppColors.primaryColor,
            ),
            child: Text(
              "Get In Touch",
              style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color: Colors.white, fontSize: SizeConfig.getScreenWidth(context) * 0.02),
            ),
          )
        ],
      ),
    );
  }
}
