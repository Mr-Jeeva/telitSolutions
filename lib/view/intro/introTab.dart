import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:telit_solutions/resource/strings.dart';

import '../../resource/appClass.dart';
import '../../resource/colors.dart';

class IntroTab extends StatefulWidget {
  AutoScrollController aScrollController;

  IntroTab(this.aScrollController, {Key? key}) : super(key: key);

  @override
  State<IntroTab> createState() => _IntroTabState();
}

class _IntroTabState extends State<IntroTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: AppClass().getMqHeight(context) - 70,
      margin: EdgeInsets.only(left: AppClass().getMqWidth(context) * 0.01, top: AppClass().getMqHeight(context) * 0.07),
      padding: EdgeInsets.only(bottom: 50),
    );
  }
}
