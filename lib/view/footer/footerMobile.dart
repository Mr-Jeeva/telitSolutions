import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../resource/colors.dart';
import '../../resource/responsive.dart';

class FooterMobile extends StatefulWidget {
  const FooterMobile(AutoScrollController aScrollController, {super.key});

  @override
  State<FooterMobile> createState() => _FooterMobileState();
}

class _FooterMobileState extends State<FooterMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      height: SizeConfig.getScreenHeight(context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(
              right: SizeConfig.getScreenWidth(context) * 0.2,
              left: SizeConfig.getScreenWidth(context) * 0.2,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Contact Us",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: SizeConfig.getScreenWidth(context) * 0.035)),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        hintText: "Name",
                        hintStyle: TextStyle(color: AppColors.primaryColor),
                        filled: true,
                        fillColor: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        hintText: "E-Mail",
                        hintStyle: TextStyle(color: AppColors.primaryColor),
                        filled: true,
                        fillColor: Colors.white),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(color: AppColors.secondaryColor, borderRadius: BorderRadius.circular(10.0)),
                  child: Center(child: Text("Subscribe", style: TextStyle(color: Colors.white))),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
